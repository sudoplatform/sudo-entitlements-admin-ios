//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoLogging
import AWSAppSync
import AWSCore
import SudoConfigManager

/// Generic Type to wrap list result.
public struct ListOutput<T> {

    /// Items returned by a List query output.
    public let items: [T]

    /// Next token to call next page of paginated results.
    public let nextToken: String?

    /// Returns an empty ListOutput.
    static var empty: Self {
        return Self.init(items: [])
    }

    /// Initialize an instance of ListOutput.
    public init(items: [T], nextToken: String? = nil) {
        self.items = items
        self.nextToken = nextToken
    }

}

public enum SudoEntitlementsAdminClientError: Error {

    /// Indicates the ownership proof provided for the new vau
    /// Indicates that the configuration dictionary passed to initialize the client was not valid.
    case invalidConfig

    /// Indicates the configuration related to Admin Service is not found. This may indicate that Admin Service
    /// is not deployed into your runtime instance or the config file that you are using is invalid..
    case adminServiceConfigNotFound

    /// Indicates that the input to the API was invalid.
    case invalidInput

    /// Indicates that the request operation failed due to authorization error. This maybe due to the authentication
    /// token being invalid or other security controls that prevent the user from accessing the API.
    case notAuthorized

    /// Indicates that the input entitlements name was not recognized.
    case invalidEntitlementsError

    /// Indicates that an attempt has been made to delete an entitlements set that is currently in use by one or
    /// more entitlements sequences.
    case entitlementsSetInUse

    /// Indicates that the input entitlements set name does not exists when applying an entitlements set to a user.
    case entitlementsSetNotFoundError

    /// Indicates that the attempt to add a new entitlement set failed because an entitlements set with the same
    /// name already exists
    case entitlementsSetAlreadyExistsError

    /// Indicates that the attempt to add a new entitlement sequence failed because an entitlements sequence
    /// with the same name already exists
    case entitlementsSequenceAlreadyExistsError

    /// Indicates that the input entitlements sequence name does not exists when applying an entitlements sequence
    /// to a user.
    case entitlementsSequenceNotFoundError

    /// Indicates that an attempt was made to modify or delete an immutable entitlements set was made (e.g. _unentitled_).
    case entitlementsSetImmutableError

    /// Indicates that an internal server error caused the operation to fail. The error is possibly transient and
    /// retrying at a later time may cause the operation to complete successfully
    case serviceError

    /// Indicates that the request failed due to connectivity, availability or access error.
    case requestFailed(response: HTTPURLResponse?, cause: Error?)

    /// Indicates that a GraphQL error was returned by the backend.
    case graphQLError(cause: Error)

    /// AppSyncClient client returned an unexpected error.
    case appSyncClientError(cause: Error)

    /// Indicates that a fatal error occurred. This could be due to coding error, out-of-memory condition or other
    /// conditions that is beyond control of `SudoEntitlementsAdminClient` implementation.
    case fatalError(description: String)

    private struct SudoPlatformServiceError {
        static let type = "errorType"
        static let decodingError = "sudoplatform.DecodingError"
        static let invalidArgumentError = "sudoplatform.InvalidArgumentError"
        static let serviceError = "sudoplatform.ServiceError"
        static let invalidEntitlementsError = "sudoplatform.entitlements.InvalidEntitlementsError"
        static let entitlementsSetInUse = "sudoplatform.entitlements.EntitlementsSetInUse"
        static let entitlementsSetNotFoundError = "sudoplatform.entitlements.EntitlementsSetNotFoundError"
        static let entitlementsSetAlreadyExistsError = "sudoplatform.entitlements.EntitlementsSetAlreadyExistsError"
        static let entitlementsSequenceAlreadyExistsError = "sudoplatform.entitlements.EntitlementsSequenceAlreadyExistsError"
        static let entitlementsSequenceNotFoundError = "sudoplatform.entitlements.EntitlementsSequenceNotFoundError"
        static let entitlementsSetImmutableError = "sudoplatform.entitlements.EntitlementsSetImmutableError"
    }

    static func fromAppSyncClientError(error: Error) -> SudoEntitlementsAdminClientError {
        switch error {
        case AWSAppSyncClientError.authenticationError(_):
            return .notAuthorized
        case AWSAppSyncClientError.requestFailed(_, let response, let cause):
            if let statusCode = response?.statusCode {
                if statusCode == 401 {
                    return .notAuthorized
                }
            }
            return .requestFailed(response: response, cause: cause)
        default:
            return .appSyncClientError(cause: error)
        }
    }

    static func fromGraphQLError(error: GraphQLError) -> SudoEntitlementsAdminClientError {
        guard let errorType = error[SudoPlatformServiceError.type] as? String else {
            return .fatalError(description: "GraphQL operation failed but error type was not found in the response. \(error)")
        }

        switch errorType {
        case SudoPlatformServiceError.invalidArgumentError, SudoPlatformServiceError.decodingError:
            return .invalidInput
        case SudoPlatformServiceError.invalidEntitlementsError:
            return .invalidEntitlementsError
        case SudoPlatformServiceError.entitlementsSetInUse:
            return .entitlementsSetInUse
        case SudoPlatformServiceError.entitlementsSetImmutableError:
            return .entitlementsSetImmutableError
        case SudoPlatformServiceError.entitlementsSetNotFoundError:
            return .entitlementsSetNotFoundError
        case SudoPlatformServiceError.entitlementsSequenceNotFoundError:
            return .entitlementsSequenceNotFoundError
        case SudoPlatformServiceError.entitlementsSetAlreadyExistsError:
            return .entitlementsSetAlreadyExistsError
        case SudoPlatformServiceError.entitlementsSequenceAlreadyExistsError:
            return .entitlementsSequenceAlreadyExistsError
        case SudoPlatformServiceError.serviceError:
            return .serviceError
        default:
            return .graphQLError(cause: error)
        }
    }

}

/// Protocol encapsulating a set of functions for Entitlements Admin API.
public protocol SudoEntitlementsAdminClient: AnyObject {

    /// Get an entitlements set.
    /// - Parameters:
    ///   - name: name of the entitlements set to return.
    ///   - completion: completion handler to return the named entitlements set or undefined if no entitlements set
    ///         of the specified name has been defined or error.
    func getEntitlementsSetWithName(
        name: String,
        completion: @escaping (Swift.Result<EntitlementsSet?, Error>) -> Void
    )

    /// List entitlements sets.
    /// - Parameters:
    ///   - nextToken: optional token from which to continue listing.
    ///   - completion: completion handler to return the paginated list of entitlements sets or error.
    func listEntitlementsSetsWithNextToken(
        nextToken: String?,
        completion: @escaping (Swift.Result<ListOutput<EntitlementsSet>, Error>) -> Void
    )

    /// Get entitlements for a user.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to retrieve entitlements for.
    ///   - completion: completion handler to return entitlements consumption for the user or error.
    func getEntitlementsForUserWithExternalId(
        externalId: String,
        completion: @escaping (Swift.Result<UserEntitlementsConsumption?, Error>) -> Void
    )

    /// Add a new entitlements set.
    /// - Parameters:
    ///   - name: name of the new entitlements set.
    ///   - description: description of the new entitlements set.
    ///   - entitlements: list of entitlements associated with the new entitlements set.
    ///   - completion: completion handler to return the newly created entitlements set or error.
    func addEntitlementsSetWithName(
        name: String,
        description: String?,
        entitlements: [Entitlement],
        completion: @escaping (Swift.Result<EntitlementsSet, Error>) -> Void
    )

    /// Update an entitlements set.
    /// - Parameters:
    ///   - name: name of the entitlements set to update.
    ///   - description: description of the new entitlements set to update.
    ///   - entitlements: list of entitlements to update.
    ///   - completion: completion handler to return the updated entitlements set or error.
    func setEntitlementsSetWithName(
        name: String,
        description: String?,
        entitlements: [Entitlement],
        completion: @escaping (Swift.Result<EntitlementsSet, Error>) -> Void
    )

    /// Remove an entitlements set.
    /// - Parameters:
    ///   - name: name of the entitlements set to remove.
    ///   - completion: completion handler to return the removed entitlements set or error.
    func removeEntitlementsSetWithName(
        name: String,
        completion: @escaping (Swift.Result<EntitlementsSet?, Error>) -> Void
    )

    /// Get an entitlements sequence.
    /// - Parameters:
    ///   - name: name of the entitlements sequence to return.
    ///   - completion: completion handler to return the named entitlements sequence or undefined if no entitlements sequence
    ///         of the specified name has been defined or error.
    func getEntitlementsSequenceWithName(
        name: String,
        completion: @escaping (Swift.Result<EntitlementsSequence?, Error>) -> Void
    )

    /// List entitlements sequences.
    /// - Parameters:
    ///   - nextToken: optional token from which to continue listing.
    ///   - completion: completion handler to return the paginated list of entitlements sequences or error.
    func listEntitlementsSequencesWithNextToken(
        nextToken: String?,
        completion: @escaping (Swift.Result<ListOutput<EntitlementsSequence>, Error>) -> Void
    )

    /// Add a new entitlements sequence.
    /// - Parameters:
    ///   - name: name of the new entitlements sequence.
    ///   - description: description of the new entitlements sequence.
    ///   - transitions: list of entitlements sequence transitions associated with the new entitlements sequence.
    ///   - completion: completion handler to return the newly created entitlements sequence or error.
    func addEntitlementsSequenceWithName(
        name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition],
        completion: @escaping (Swift.Result<EntitlementsSequence, Error>) -> Void
    )

    /// Update a new entitlements sequence.
    /// - Parameters:
    ///   - name: name of the entitlements sequence to update.
    ///   - description: description of the entitlements sequence to update.
    ///   - transitions: list of entitlements sequence transitions to update.
    ///   - completion: completion handler to return the updated entitlements sequence or error.
    func setEntitlementsSequenceWithName(
        name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition],
        completion: @escaping (Swift.Result<EntitlementsSequence, Error>) -> Void
    )

    /// Remove an entitlements sequence.
    /// - Parameters:
    ///   - name: name of the entitlements set to sequence.
    ///   - completion: completion handler to return the removed entitlements sequence or error.
    func removeEntitlementsSequenceWithName(
        name: String,
        completion: @escaping (Swift.Result<EntitlementsSequence?, Error>) -> Void
    )

    /// Apply entitlements sequence directly to a user. If a record for that user's entitlements sequence
    /// does not yet exist it will be created.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to apply entitlements sequence to.
    ///   - entitlementsSequenceName: name of the entitlements sequence to apply to the user.
    ///   - completion: completion handler to return the resulting user entitlements or error.
    func applyEntitlementsSequenceToUserWithExternalId(
        externalId: String,
        entitlementsSequenceName: String,
        completion: @escaping (Swift.Result<UserEntitlements, Error>) -> Void
    )

    /// Apply entitlements set  directly to a user. If a record for that user's entitlements set does not
    /// yet exist it will be created.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to apply entitlements set to.
    ///   - entitlementsSetName: name of the entitlements set to apply to the user.
    ///   - completion: completion handler to return the resulting user entitlements or error.
    func applyEntitlementsSetToUserWithExternalId(
        externalId: String,
        entitlementsSetName: String,
        completion: @escaping (Swift.Result<UserEntitlements, Error>) -> Void
    )

    /// Apply entitlements  directly to a user. If a record for that user's entitlements does not yet
    /// exist it will be created.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to apply entitlements to.
    ///   - entitlements: list of the entitlements to apply to the user.
    ///   - completion: completion handler to return the resulting user entitlements or error.
    func applyEntitlementsToUserWithExternalId(
        externalId: String,
        entitlements: [Entitlement],
        completion: @escaping (Swift.Result<UserEntitlements, Error>) -> Void
    )

}

/// Default implementation of `SudoEntitlementsAdminClient`.
public class DefaultSudoEntitlementsAdminClient: SudoEntitlementsAdminClient {

    public struct Config {

        // Configuration namespace.
        struct Namespace {
            static let adminConsoleProjectService = "adminConsoleProjectService"
        }

    }

    /// Default logger for the client.
    private let logger: Logger

    /// GraphQL client for communicating with the Entitlements Admin API.
    private let graphQLClient: AWSAppSyncClient

    /// Intializes a new `DefaultSudoEntitlementsAdminClient` instance.
    ///
    /// - Parameters:
    ///   - apiKey: API key used to authenticate to the Admin Service.
    ///   - logger: A logger to use for logging messages. If none provided then a default internal logger will be used.
    /// - Throws: `SudoEntitlementsAdminClientError`
    convenience public init(
        apiKey: String,
        logger: Logger? = nil
    ) throws {
        guard let configManager = DefaultSudoConfigManager() else {
            throw SudoEntitlementsAdminClientError.invalidConfig
        }

        guard let config = configManager.getConfigSet(
            namespace: Config.Namespace.adminConsoleProjectService
        ) else {
            throw SudoEntitlementsAdminClientError.adminServiceConfigNotFound
        }

        try self.init(config: config, apiKey: apiKey, logger: logger)
    }

    /// Intializes a new `DefaultSudoEntitlementsAdminClient` instance with the specified backend configuration.
    ///
    /// - Parameters:
    ///   - config: Configuration parameters for the client.
    ///   - apiKey: API key used to authenticate to the Admin Service.
    ///   - logger: A logger to use for logging messages. If none provided then a default internal logger will be used.
    ///   - graphQLClient: Optional GraphQL client to use. Mainly used for unit testing.
    /// - Throws: `SudoEntitlementsAdminClientError`
    public init(
        config: [String: Any],
        apiKey: String,
        logger: Logger? = nil,
        graphQLClient: AWSAppSyncClient? = nil
    ) throws {

#if DEBUG
        AWSDDLog.sharedInstance.logLevel = .verbose
        AWSDDLog.add(AWSDDTTYLogger.sharedInstance)
#endif

        let logger = logger ?? Logger.SudoEntitlementsAdminClientLogger
        self.logger = logger

        if let graphQLClient = graphQLClient {
            self.graphQLClient = graphQLClient
        } else {
            guard let configProvider = SudoEntitlementsAdminClientConfigProvider(config: config, apiKey: apiKey) else {
                throw SudoEntitlementsAdminClientError.invalidConfig
            }
            let appSyncConfig = try AWSAppSyncClientConfiguration(
                appSyncServiceConfig: configProvider,
                userPoolsAuthProvider: nil,
                urlSessionConfiguration: URLSessionConfiguration.ephemeral,
                cacheConfiguration: AWSAppSyncCacheConfiguration.inMemory,
                connectionStateChangeHandler: nil,
                s3ObjectManager: nil,
                presignedURLClient: nil,
                retryStrategy: .aggressive
            )
            self.graphQLClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            self.graphQLClient.apolloClient?.cacheKeyForObject = { $0["id"] }
        }
    }

    public func getEntitlementsSetWithName(
        name: String,
        completion: @escaping (Swift.Result<EntitlementsSet?, Error>) -> Void
    ) {
        let operation = GetEntitlementsSetQuery(input: GetEntitlementsSetInput(name: name))
        self.graphQLClient.fetch(
            query: operation,
            cachePolicy: .fetchIgnoringCacheData,
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                guard let item = result.data?.getEntitlementsSet else {
                    return completion(.success(nil))
                }

                completion(
                    .success(
                        EntitlementsSet(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            name: item.name,
                            description: item.description,
                            entitlements: item.entitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: $0.value
                                )
                            }
                        )
                    )
                )
            }
        )
    }

    public func listEntitlementsSetsWithNextToken(
        nextToken: String?,
        completion: @escaping (Swift.Result<ListOutput<EntitlementsSet>, Error>) -> Void
    ) {
        self.graphQLClient.fetch(
            query: ListEntitlementsSetsQuery(nextToken: nextToken),
            cachePolicy: .fetchIgnoringCacheData,
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                if let output = result.data?.listEntitlementsSets {
                    let items = output.items.map {
                        EntitlementsSet(
                            createdAt: Date(millisecondsSinceEpoch: $0.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: $0.updatedAtEpochMs),
                            version: $0.version,
                            name: $0.name,
                            description: $0.description,
                            entitlements: $0.entitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: $0.value
                                )
                            }
                        )
                    }
                    completion(.success(ListOutput<EntitlementsSet>(items: items, nextToken: output.nextToken)))
                } else {
                    completion(.success(ListOutput<EntitlementsSet>.empty))
                }
            }
        )
    }

    public func getEntitlementsForUserWithExternalId(
        externalId: String,
        completion: @escaping (Swift.Result<UserEntitlementsConsumption?, Error>) -> Void
    ) {
        self.graphQLClient.fetch(
            query: GetEntitlementsForUserQuery(input: GetEntitlementsForUserInput(externalId: externalId)),
            cachePolicy: .fetchIgnoringCacheData,
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                var userEntitlementsConsumption: UserEntitlementsConsumption?
                if let item = result.data?.getEntitlementsForUser {
                    let entitlements = UserEntitlements(
                        createdAt: Date(millisecondsSinceEpoch: item.entitlements.createdAtEpochMs),
                        updatedAt: Date(millisecondsSinceEpoch: item.entitlements.updatedAtEpochMs),
                        version: item.entitlements.version,
                        externalId: item.entitlements.externalId,
                        owner: item.entitlements.owner,
                        entitlementsSetName: item.entitlements.entitlementsSetName,
                        entitlementsSequenceName: item.entitlements.entitlementsSequenceName,
                        entitlements: item.entitlements.entitlements.map {
                            Entitlement(
                                name: $0.name,
                                description: $0.description,
                                value: $0.value
                            )
                        },
                        transitionsRelativeTo: item.entitlements.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) } ?? nil,
                        accountState: item.entitlements.accountState.map { $0 == .active ? AccountState.active : AccountState.locked } ?? nil
                    )
                    let consumption = item.consumption.map {
                        EntitlementConsumption(
                            name: $0.name,
                            value: $0.value,
                            available: $0.available,
                            consumed: $0.consumed,
                            firstConsumedAt: $0.firstConsumedAtEpochMs.map { Date(millisecondsSinceEpoch: $0) } ?? nil,
                            lastConsumedAt: $0.lastConsumedAtEpochMs.map { Date(millisecondsSinceEpoch: $0) } ?? nil
                        )
                    }
                    userEntitlementsConsumption = UserEntitlementsConsumption(entitlements: entitlements, consumption: consumption)
                }
                completion(.success(userEntitlementsConsumption))
            }
        )
    }

    public func addEntitlementsSetWithName(
        name: String,
        description: String?,
        entitlements: [Entitlement],
        completion: @escaping (Swift.Result<EntitlementsSet, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: AddEntitlementsSetMutation(
                input: AddEntitlementsSetInput(
                    name: name,
                    description: description,
                    entitlements: entitlements.map {
                        EntitlementInput(name: $0.name, description: $0.description, value: $0.value)
                    }
                )
            ),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                guard let item = result.data?.addEntitlementsSet else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    )
                }

                completion(
                    .success(
                        EntitlementsSet(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            name: item.name,
                            description: item.description,
                            entitlements: item.entitlements.map {
                                Entitlement(name: $0.name, description: $0.description, value: $0.value)
                            }
                        )
                    )
                )
            }
        )
    }

    public func setEntitlementsSetWithName(
        name: String,
        description: String?,
        entitlements: [Entitlement],
        completion: @escaping (Swift.Result<EntitlementsSet, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: SetEntitlementsSetMutation(
                input: SetEntitlementsSetInput(
                    name: name,
                    description: description,
                    entitlements: entitlements.map {
                        EntitlementInput(name: $0.name, description: $0.description, value: $0.value)
                    }
                )
            ),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                guard let item = result.data?.setEntitlementsSet else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    )
                }

                completion(
                    .success(
                        EntitlementsSet(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            name: item.name,
                            description: item.description,
                            entitlements: item.entitlements.map {
                                Entitlement(name: $0.name, description: $0.description, value: $0.value)
                            }
                        )
                    )
                )
            }
        )
    }

    public func removeEntitlementsSetWithName(
        name: String,
        completion: @escaping (Swift.Result<EntitlementsSet?, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: RemoveEntitlementsSetMutation(input: RemoveEntitlementsSetInput(name: name)),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                completion(
                    .success(
                        result.data?.removeEntitlementsSet.map {
                            EntitlementsSet(
                                createdAt: Date(millisecondsSinceEpoch: $0.createdAtEpochMs),
                                updatedAt: Date(millisecondsSinceEpoch: $0.updatedAtEpochMs),
                                version: $0.version,
                                name: $0.name,
                                description: $0.description,
                                entitlements: $0.entitlements.map {
                                    Entitlement(name: $0.name, description: $0.description, value: $0.value)
                                }
                            )
                        } ?? nil
                    )
                )
            }
        )
    }

    public func getEntitlementsSequenceWithName(
        name: String,
        completion: @escaping (Swift.Result<EntitlementsSequence?, Error>) -> Void
    ) {
        self.graphQLClient.fetch(
            query: GetEntitlementsSequenceQuery(input: GetEntitlementsSequenceInput(name: name)),
            cachePolicy: .fetchIgnoringCacheData,
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                completion(
                    .success(
                        result.data?.getEntitlementsSequence.map {
                            EntitlementsSequence(
                                createdAt: Date(millisecondsSinceEpoch: $0.createdAtEpochMs),
                                updatedAt: Date(millisecondsSinceEpoch: $0.updatedAtEpochMs),
                                version: $0.version,
                                name: $0.name,
                                description: $0.description,
                                transitions: $0.transitions.map {
                                    EntitlementsSequenceTransition(
                                        entitlementsSetName: $0.entitlementsSetName,
                                        duration: $0.duration
                                    )
                                }
                            )
                        } ?? nil
                    )
                )
            }
        )
    }

    public func listEntitlementsSequencesWithNextToken(
        nextToken: String?,
        completion: @escaping (Swift.Result<ListOutput<EntitlementsSequence>, Error>) -> Void
    ) {
        self.graphQLClient.fetch(
            query: ListEntitlementsSequencesQuery(nextToken: nextToken),
            cachePolicy: .fetchIgnoringCacheData,
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                if let output = result.data?.listEntitlementsSequences {
                    let items = output.items.map {
                        EntitlementsSequence(
                            createdAt: Date(millisecondsSinceEpoch: $0.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: $0.updatedAtEpochMs),
                            version: $0.version,
                            name: $0.name,
                            description: $0.description,
                            transitions: $0.transitions.map {
                                EntitlementsSequenceTransition(
                                    entitlementsSetName: $0.entitlementsSetName,
                                    duration: $0.duration
                                )
                            }
                        )
                    }
                    completion(.success(ListOutput<EntitlementsSequence>(items: items, nextToken: output.nextToken)))
                } else {
                    completion(.success(ListOutput<EntitlementsSequence>.empty))
                }
            }
        )
    }

    public func addEntitlementsSequenceWithName(
        name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition],
        completion: @escaping (Swift.Result<EntitlementsSequence, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: AddEntitlementsSequenceMutation(
                input: AddEntitlementsSequenceInput(
                    name: name,
                    description: description,
                    transitions: transitions.map {
                        EntitlementsSequenceTransitionInput(entitlementsSetName: $0.entitlementsSetName, duration: $0.duration)
                    }
                )
            ),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                guard let item = result.data?.addEntitlementsSequence else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    )
                }

                completion(
                    .success(
                        EntitlementsSequence(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            name: item.name,
                            description: item.description,
                            transitions: item.transitions.map {
                                EntitlementsSequenceTransition(
                                    entitlementsSetName: $0.entitlementsSetName,
                                    duration: $0.duration
                                )
                            }
                        )
                    )
                )
            }
        )
    }

    public func setEntitlementsSequenceWithName(
        name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition],
        completion: @escaping (Swift.Result<EntitlementsSequence, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: SetEntitlementsSequenceMutation(
                input: SetEntitlementsSequenceInput(
                    name: name,
                    description: description,
                    transitions: transitions.map {
                        EntitlementsSequenceTransitionInput(entitlementsSetName: $0.entitlementsSetName, duration: $0.duration)
                    }
                )
            ),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                guard let item = result.data?.setEntitlementsSequence else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    )
                }

                completion(
                    .success(
                        EntitlementsSequence(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            name: item.name,
                            description: item.description,
                            transitions: item.transitions.map {
                                EntitlementsSequenceTransition(
                                    entitlementsSetName: $0.entitlementsSetName,
                                    duration: $0.duration
                                )
                            }
                        )
                    )
                )
            }
        )
    }

    public func removeEntitlementsSequenceWithName(
        name: String,
        completion: @escaping (Swift.Result<EntitlementsSequence?, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: RemoveEntitlementsSequenceMutation(input: RemoveEntitlementsSequenceInput(name: name)),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                completion(
                    .success(
                        result.data?.removeEntitlementsSequence.map {
                            EntitlementsSequence(
                                createdAt: Date(millisecondsSinceEpoch: $0.createdAtEpochMs),
                                updatedAt: Date(millisecondsSinceEpoch: $0.updatedAtEpochMs),
                                version: $0.version,
                                name: $0.name,
                                description: $0.description,
                                transitions: $0.transitions.map {
                                    EntitlementsSequenceTransition(
                                        entitlementsSetName: $0.entitlementsSetName,
                                        duration: $0.duration
                                    )
                                }
                            )
                        } ?? nil
                    )
                )
            }
        )
    }

    public func applyEntitlementsSequenceToUserWithExternalId(
        externalId: String,
        entitlementsSequenceName: String,
        completion: @escaping (Swift.Result<UserEntitlements, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: ApplyEntitlementsSequenceToUserMutation(
                input: ApplyEntitlementsSequenceToUserInput(
                    externalId: externalId,
                    entitlementsSequenceName: entitlementsSequenceName
                )
            ),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                guard let item = result.data?.applyEntitlementsSequenceToUser else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    )
                }

                completion(
                    .success(
                        UserEntitlements(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            externalId: item.externalId,
                            owner: item.owner,
                            entitlementsSetName: item.entitlementsSetName,
                            entitlementsSequenceName: item.entitlementsSequenceName,
                            entitlements: item.entitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: $0.value
                                )
                            },
                            transitionsRelativeTo: item.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) } ?? nil,
                            accountState: item.accountState.map { $0 == .active ? AccountState.active : AccountState.locked } ?? nil
                        )
                    )
                )
            }
        )
    }

    public func applyEntitlementsSetToUserWithExternalId(
        externalId: String,
        entitlementsSetName: String,
        completion: @escaping (Swift.Result<UserEntitlements, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: ApplyEntitlementsSetToUserMutation(
                input: ApplyEntitlementsSetToUserInput(
                    externalId: externalId,
                    entitlementsSetName: entitlementsSetName
                )
            ),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                guard let item = result.data?.applyEntitlementsSetToUser else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    )
                }

                completion(
                    .success(
                        UserEntitlements(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            externalId: item.externalId,
                            owner: item.owner,
                            entitlementsSetName: item.entitlementsSetName,
                            entitlementsSequenceName: item.entitlementsSequenceName,
                            entitlements: item.entitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: $0.value
                                )
                            },
                            transitionsRelativeTo: item.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) } ?? nil,
                            accountState: item.accountState.map { $0 == .active ? AccountState.active : AccountState.locked } ?? nil
                        )
                    )
                )
            }
        )
    }

    public func applyEntitlementsToUserWithExternalId(
        externalId: String,
        entitlements: [Entitlement],
        completion: @escaping (Swift.Result<UserEntitlements, Error>) -> Void
    ) {
        self.graphQLClient.perform(
            mutation: ApplyEntitlementsToUserMutation(
                input: ApplyEntitlementsToUserInput(
                    externalId: externalId,
                    entitlements: entitlements.map {
                        EntitlementInput(name: $0.name, description: $0.description, value: $0.value)
                    }
                )
            ),
            resultHandler: { (result, error) in
                if let error = error {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error)))
                }

                guard let result = result else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    )
                }

                if let error = result.errors?.first {
                    return completion(.failure(SudoEntitlementsAdminClientError.fromGraphQLError(error: error)))
                }

                guard let item = result.data?.applyEntitlementsToUser else {
                    return completion(
                        .failure(
                            SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    )
                }

                completion(
                    .success(
                        UserEntitlements(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            externalId: item.externalId,
                            owner: item.owner,
                            entitlementsSetName: item.entitlementsSetName,
                            entitlementsSequenceName: item.entitlementsSequenceName,
                            entitlements: item.entitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: $0.value
                                )
                            },
                            transitionsRelativeTo: item.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) } ?? nil,
                            accountState: item.accountState.map { $0 == .active ? AccountState.active : AccountState.locked } ?? nil
                        )
                    )
                )
            }
        )
    }

}
