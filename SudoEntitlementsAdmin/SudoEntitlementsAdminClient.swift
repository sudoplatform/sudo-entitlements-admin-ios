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

public enum SudoEntitlementsAdminClientError: Error, Equatable {
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

    /// Indicates that the request failed due to connectivity, availability or access error.
    case requestFailed(response: HTTPURLResponse?, cause: Error?)

    /// Indicates that a GraphQL error was returned by the backend.
    case graphQLError(cause: Error)

    /// AppSyncClient client returned an unexpected error.
    case appSyncClientError(cause: Error)

    /// Indicates that a fatal error occurred. This could be due to coding error, out-of-memory condition or other
    /// conditions that is beyond control of `SudoEntitlementsAdminClient` implementation.
    case fatalError(description: String)

    /// Returned if an attempt to update a user's entitlements is made after the
    /// user's entitlements have already been updated to a later version
    case alreadyUpdatedError

    /// A bulk operations has specified multiple operations for the same user
    case bulkOperationDuplicateUsersError

    /// An operation has invalidly specified the same entitlement multiple times
    case duplicateEntitlement

    /// Indicates that the attempt to add a new entitlement sequence failed because an entitlements sequence
    /// with the same name already exists
    case entitlementsSequenceAlreadyExistsError

    /// Indicates that the input entitlements sequence name does not exists when applying an entitlements sequence
    /// to a user.
    case entitlementsSequenceNotFoundError

    /// Returned if an entitlements sequence update is already in progress
    /// when setEntitlementsSequence or removeEntitlementsSequence is attempted.
    case entitlementsSequenceUpdateInProgressError

    /// Indicates that the attempt to add a new entitlement set failed because an entitlements set with the same
    /// name already exists
    case entitlementsSetAlreadyExistsError

    /// Indicates that an attempt was made to modify or delete an immutable entitlements set was made (e.g. _unentitled_).
    case entitlementsSetImmutableError

    /// Indicates that an attempt has been made to delete an entitlements set that is currently in use by one or
    /// more entitlements sequences.
    case entitlementsSetInUseError

    /// Indicates that the input entitlements set name does not exists when applying an entitlements set to a user.
    case entitlementsSetNotFoundError

    /// Indicates that an input entitlements name was not recognized.
    case invalidEntitlementsError

    /// The request would exceed an API limit
    case limitExceededError

    /// A call to applyExpendableEntitlementsToUser would result in negative expendable entitlements for the user
    case negativeEntitlement

    /// An operation failed because no entitlements have been assigned to the user
    case noEntitlements

    /// A call to applyExpendableEntitlementsToUser would result in overflow of the entitled amount
    case overflowedEntitlement

    /// Indicates that an internal server error caused the operation to fail. The error is possibly transient and
    /// retrying at a later time may cause the operation to complete successfully
    case serviceError

    public static func == (lhs: SudoEntitlementsAdminClientError, rhs: SudoEntitlementsAdminClientError) -> Bool {
        switch(lhs, rhs) {
        case (.invalidConfig, .invalidConfig): return true
        case (.adminServiceConfigNotFound, .adminServiceConfigNotFound): return true
        case (.invalidInput, .invalidInput): return true
        case (.notAuthorized, .notAuthorized): return true
        case
            (.requestFailed, .requestFailed),
            (.graphQLError, .graphQLError),
            (.appSyncClientError, appSyncClientError),
            (.fatalError, fatalError):
            // We return false for these since we can't compare the error properties of this error. We list these here for completeness.
            return false
        case (.alreadyUpdatedError, .alreadyUpdatedError): return true
        case (.bulkOperationDuplicateUsersError, .bulkOperationDuplicateUsersError): return true
        case (.duplicateEntitlement, .duplicateEntitlement): return true
        case (.entitlementsSequenceAlreadyExistsError, .entitlementsSequenceAlreadyExistsError): return true
        case (.entitlementsSequenceNotFoundError, .entitlementsSequenceNotFoundError): return true
        case (.entitlementsSequenceUpdateInProgressError, .entitlementsSequenceUpdateInProgressError): return true
        case (.entitlementsSetAlreadyExistsError, .entitlementsSetAlreadyExistsError): return true
        case (.entitlementsSetImmutableError, .entitlementsSetImmutableError): return true
        case (.entitlementsSetInUseError, .entitlementsSetInUseError): return true
        case (.entitlementsSetNotFoundError, .entitlementsSetNotFoundError): return true
        case (.invalidEntitlementsError, .invalidEntitlementsError): return true
        case (.limitExceededError, .limitExceededError): return true
        case (.negativeEntitlement, .negativeEntitlement): return true
        case (.noEntitlements, .noEntitlements): return true
        case (.overflowedEntitlement, .overflowedEntitlement): return true
        case (.serviceError, .serviceError): return true
        default: return false
        }
    }

    private struct SudoPlatformServiceError {
        static let type = "errorType"
        static let decodingError = "sudoplatform.DecodingError"
        static let alreadyUpdatedError = "sudoplatform.entitlements.AlreadyUpdatedError"
        static let bulkOperationDuplicateUsersError = "sudoplatform.entitlements.BulkOperationDuplicateUsersError"
        static let duplicateEntitlement = "sudoplatform.entitlements.DuplicateEntitlementError"
        static let entitlementsSequenceAlreadyExistsError = "sudoplatform.entitlements.EntitlementsSequenceAlreadyExistsError"
        static let entitlementsSequenceNotFoundError = "sudoplatform.entitlements.EntitlementsSequenceNotFoundError"
        static let entitlementsSequenceUpdateInProgressError = "sudoplatform.entitlements.EntitlementsSequenceUpdateInProgressError"
        static let entitlementsSetAlreadyExistsError = "sudoplatform.entitlements.EntitlementsSetAlreadyExistsError"
        static let entitlementsSetImmutableError = "sudoplatform.entitlements.EntitlementsSetImmutableError"
        static let entitlementsSetInUseError = "sudoplatform.entitlements.EntitlementsSetInUseError"
        static let entitlementsSetNotFoundError = "sudoplatform.entitlements.EntitlementsSetNotFoundError"
        static let invalidArgumentError = "sudoplatform.InvalidArgumentError"
        static let invalidEntitlementsError = "sudoplatform.entitlements.InvalidEntitlementsError"
        static let limitExceededError = "sudoplatform.LimitExceededError"
        static let negativeEntitlement = "sudoplatform.entitlements.NegativeEntitlementError"
        static let noEntitlements = "sudoplatform.NoEntitlementsError"
        static let overflowedEntitlement = "sudoplatform.entitlements.OverflowedEntitlementError"
        static let serviceError = "sudoplatform.ServiceError"
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

        guard let result = fromGraphQLErrorType(errorType) else {
            return .graphQLError(cause: error)
        }
        return result
    }

    static func fromGraphQLErrorType(_ errorType: String) -> SudoEntitlementsAdminClientError? {
        switch errorType {
        case SudoPlatformServiceError.invalidArgumentError, SudoPlatformServiceError.decodingError:
            return .invalidInput
        case SudoPlatformServiceError.alreadyUpdatedError:
            return .alreadyUpdatedError
        case SudoPlatformServiceError.bulkOperationDuplicateUsersError:
            return .bulkOperationDuplicateUsersError
        case SudoPlatformServiceError.duplicateEntitlement:
            return .duplicateEntitlement
        case SudoPlatformServiceError.entitlementsSequenceAlreadyExistsError:
            return .entitlementsSequenceAlreadyExistsError
        case SudoPlatformServiceError.entitlementsSequenceNotFoundError:
            return .entitlementsSequenceNotFoundError
        case SudoPlatformServiceError.entitlementsSequenceUpdateInProgressError:
            return .entitlementsSequenceUpdateInProgressError
        case SudoPlatformServiceError.entitlementsSetAlreadyExistsError:
            return .entitlementsSetAlreadyExistsError
        case SudoPlatformServiceError.entitlementsSetImmutableError:
            return .entitlementsSetImmutableError
        case SudoPlatformServiceError.entitlementsSetInUseError:
            return .entitlementsSetInUseError
        case SudoPlatformServiceError.entitlementsSetNotFoundError:
            return .entitlementsSetNotFoundError
        case SudoPlatformServiceError.invalidEntitlementsError:
            return .invalidEntitlementsError
        case SudoPlatformServiceError.limitExceededError:
            return .limitExceededError
        case SudoPlatformServiceError.negativeEntitlement:
            return .negativeEntitlement
        case SudoPlatformServiceError.noEntitlements:
            return .noEntitlements
        case SudoPlatformServiceError.overflowedEntitlement:
            return .overflowedEntitlement
        case SudoPlatformServiceError.serviceError:
            return .serviceError
        default:
            return nil
        }
    }

}

/// Protocol encapsulating a set of functions for Entitlements Admin API.
public protocol SudoEntitlementsAdminClient: AnyObject {

    /// Get an entitlements set.
    /// - Parameters:
    ///   - name: name of the entitlements set to return.
    /// - Returns: The named entitlements set or nil if no entitlements set of the specified name was not found.
    func getEntitlementsSetWithName(
        _ name: String
    ) async throws -> EntitlementsSet?

    /// List entitlements sets.
    /// - Parameters:
    ///   - nextToken: optional token from which to continue listing.
    /// - Returns: The paginated list of entitlements sets.
    func listEntitlementsSetsWithNextToken(
        _ nextToken: String?
    ) async throws -> ListOutput<EntitlementsSet>

    /// Get entitlements for a user.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to retrieve entitlements for.
    /// - Returns: The entitlements consumption for the user.
    func getEntitlementsForUserWithExternalId(
        _ externalId: String
    ) async throws -> UserEntitlementsConsumption?

    /// Add a new entitlements set.
    /// - Parameters:
    ///   - name: name of the new entitlements set.
    ///   - description: description of the new entitlements set.
    ///   - entitlements: list of entitlements associated with the new entitlements set.
    /// - Returns: The newly created entitlements set.
    func addEntitlementsSetWithName(
        _ name: String,
        description: String?,
        entitlements: [Entitlement]
    ) async throws -> EntitlementsSet

    /// Update an entitlements set.
    /// - Parameters:
    ///   - name: name of the entitlements set to update.
    ///   - description: description of the new entitlements set to update.
    ///   - entitlements: list of entitlements to update.
    /// - Returns: The updated entitlements set.
    func setEntitlementsSetWithName(
        _ name: String,
        description: String?,
        entitlements: [Entitlement]
    ) async throws -> EntitlementsSet

    /// Remove an entitlements set.
    /// - Parameters:
    ///   - name: name of the entitlements set to remove.
    /// - Returns: The removed entitlements set.
    func removeEntitlementsSetWithName(
        _ name: String
    ) async throws -> EntitlementsSet?

    /// Get an entitlements sequence.
    /// - Parameters:
    ///   - name: name of the entitlements sequence to return.
    /// - Returns: The named entitlements sequence or nil if no entitlements sequence of the specified name was not found.
    func getEntitlementsSequenceWithName(
        _ name: String
    ) async throws -> EntitlementsSequence?

    /// List entitlements sequences.
    /// - Parameters:
    ///   - nextToken: optional token from which to continue listing.
    /// - Returns: The paginated list of entitlements sequences.
    func listEntitlementsSequencesWithNextToken(
        _ nextToken: String?
    ) async throws -> ListOutput<EntitlementsSequence>

    /// Add a new entitlements sequence.
    /// - Parameters:
    ///   - name: name of the new entitlements sequence.
    ///   - description: description of the new entitlements sequence.
    ///   - transitions: list of entitlements sequence transitions associated with the new entitlements sequence.
    /// - Returns: The newly created entitlements sequence.
    func addEntitlementsSequenceWithName(
        _ name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition]
    ) async throws -> EntitlementsSequence

    /// Update a new entitlements sequence.
    /// - Parameters:
    ///   - name: name of the entitlements sequence to update.
    ///   - description: description of the entitlements sequence to update.
    ///   - transitions: list of entitlements sequence transitions to update.
    /// - Returns: The updated entitlements sequence.
    func setEntitlementsSequenceWithName(
        _ name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition]
    ) async throws -> EntitlementsSequence

    /// Remove an entitlements sequence.
    /// - Parameters:
    ///   - name: name of the entitlements set to sequence.
    /// - Returns: The removed entitlements sequence.
    func removeEntitlementsSequenceWithName(
        _ name: String
    ) async throws -> EntitlementsSequence?

    /// Apply entitlements sequence directly to a user. If a record for that user's entitlements sequence
    /// does not yet exist it will be created.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to apply entitlements sequence to.
    ///   - entitlementsSequenceName: name of the entitlements sequence to apply to the user.
    ///   - transitionsRelativeToEpochMs: time in milliseconds since epoch from when transition times should be calculated
    ///   - version: if specified, version of any current entitlements that must be matched
    /// - Returns: The resulting user entitlements.
    func applyEntitlementsSequenceToUserWithExternalId(
        _ externalId: String,
        entitlementsSequenceName: String,
        transitionsRelativeToEpochMs: Double?,
        version: Double?
    ) async throws -> UserEntitlements

    /// Apply entitlements sequence to users. If a record for that user's entitlements sequence
    /// does not yet exist it will be created. Equivalent to calling applyEntitlementsSequenceToUserWithExternalId
    /// multiple times.
    /// - Parameters:
    ///   - items: Array of entitlements sequence application items
    /// - Returns: The resulting user entitlements.
    func applyEntitlementsSequenceToUsers(
        items: [ApplyEntitlementsSequenceItem]
    ) async throws -> [UserEntitlementsResult]

    /// Apply entitlements set  directly to a user. If a record for that user's entitlements set does not
    /// yet exist it will be created.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to apply entitlements set to.
    ///   - entitlementsSetName: name of the entitlements set to apply to the user.
    ///   - version: if specified, version of any current entitlements that must be matched
    /// - Returns: The resulting user entitlements.
    func applyEntitlementsSetToUserWithExternalId(
        _ externalId: String,
        entitlementsSetName: String,
        version: Double?
    ) async throws -> UserEntitlements

    /// Apply entitlements set to users. If a record for that user's entitlements set
    /// does not yet exist it will be created. Equivalent to calling applyEntitlementsSetToUserWithExternalId
    /// multiple times.
    /// - Parameters:
    ///   - items: Array of entitlements set application items
    /// - Returns: The resulting user entitlements.
    func applyEntitlementsSetToUsers(
        items: [ApplyEntitlementsSetItem]
    ) async throws -> [UserEntitlementsResult]

    /// Apply entitlements  directly to a user. If a record for that user's entitlements does not yet
    /// exist it will be created.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to apply entitlements to.
    ///   - entitlements: list of the entitlements to apply to the user.
    ///   - version: if specified, version of any current entitlements that must be matched
    /// - Returns: The resulting user entitlements.
    func applyEntitlementsToUserWithExternalId(
        _ externalId: String,
        entitlements: [Entitlement],
        version: Double?
    ) async throws -> UserEntitlements

    /// Apply entitlements to users. If a record for that user's entitlements
    /// does not yet exist it will be created. Equivalent to calling applyEntitlementsToUserWithExternalId
    /// multiple times.
    /// - Parameters:
    ///   - items: Array of entitlements application items
    /// - Returns: The resulting user entitlements.
    func applyEntitlementsToUsers(
        items: [ApplyEntitlementsItem]
    ) async throws -> [UserEntitlementsResult]

    /// Apply an expendable entitlements delta to a user. If a record for the user's entitlements does
    /// not yet exist a NoEntitlementsForUserError is thrown. Call an applyEntitlements\*
    /// method to assign entitlements before calling this method.
    ///
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to apply entitlements to.
    ///   - expendableEntitlements: the expendable entitlements delta to apply to the user
    ///   - requestId: Request of this delta. Repetition of requests for the same external ID with the same requestId are idempotent
    /// - Returns: The resulting user entitlements.
    func applyExpendableEntitlementsToUserWithExternalId(
        _ externalId: String,
        expendableEntitlements: [Entitlement],
        requestId: String
    ) async throws -> UserEntitlements

    /// Removes entitlements and consumption records of the specified user.
    /// - Parameters:
    ///   - externalId: external IDP user ID of user to remove.
    /// - Returns: The removed user information.
    func removeEntitledUserWithExternalId(
        _ externalId: String
    ) async throws -> EntitledUser?

}

public extension SudoEntitlementsAdminClient {
    func applyEntitlementsSequenceToUserWithExternalId(
        _ externalId: String,
        entitlementsSequenceName: String
    ) async throws -> UserEntitlements {
        return try await self.applyEntitlementsSequenceToUserWithExternalId(
            externalId,
            entitlementsSequenceName: entitlementsSequenceName,
            transitionsRelativeToEpochMs: nil,
            version: nil
        )
    }

    func applyEntitlementsSetToUserWithExternalId(
        _ externalId: String,
        entitlementsSetName: String
    ) async throws -> UserEntitlements {
        return try await self.applyEntitlementsSetToUserWithExternalId(
            externalId,
            entitlementsSetName: entitlementsSetName,
            version: nil
        )
    }

    func applyEntitlementsToUserWithExternalId(
        _ externalId: String,
        entitlements: [Entitlement]
    ) async throws -> UserEntitlements {
        return try await self.applyEntitlementsToUserWithExternalId(
            externalId,
            entitlements: entitlements,
            version: nil
        )
    }
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
        _ name: String
    ) async throws -> EntitlementsSet? {
        let operation = GraphQL.GetEntitlementsSetQuery(input: GraphQL.GetEntitlementsSetInput(name: name))

        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitlementsSet?, Error>) in
            self.graphQLClient.fetch(
                query: operation,
                cachePolicy: .fetchIgnoringCacheData,
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.getEntitlementsSet else {
                        return continuation.resume(returning: nil)
                    }

                    continuation.resume(
                        returning: EntitlementsSet(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            name: item.name,
                            description: item.description,
                            entitlements: item.entitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: Int64($0.value)
                                )
                            }
                        )
                    )
                }
            )
        })
    }

    public func listEntitlementsSetsWithNextToken(
        _ nextToken: String?
    ) async throws -> ListOutput<EntitlementsSet> {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ListOutput<EntitlementsSet>, Error>) in
            self.graphQLClient.fetch(
                query: GraphQL.ListEntitlementsSetsQuery(nextToken: nextToken),
                cachePolicy: .fetchIgnoringCacheData,
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
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
                                        value: Int64($0.value)
                                    )
                                }
                            )
                        }
                        continuation.resume(returning: ListOutput<EntitlementsSet>(items: items, nextToken: output.nextToken))
                    } else {
                        continuation.resume(returning: ListOutput<EntitlementsSet>.empty)
                    }
                }
            )
        })
    }

    public func getEntitlementsForUserWithExternalId(
        _ externalId: String
    ) async throws -> UserEntitlementsConsumption? {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<UserEntitlementsConsumption?, Error>) in
            self.graphQLClient.fetch(
                query: GraphQL.GetEntitlementsForUserQuery(input: GraphQL.GetEntitlementsForUserInput(externalId: externalId)),
                cachePolicy: .fetchIgnoringCacheData,
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
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
                                    value: Int64($0.value)
                                )
                            },
                            expendableEntitlements: item.entitlements.expendableEntitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: Int64($0.value)
                                )
                            },
                            transitionsRelativeTo: item.entitlements.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
                            accountState: item.entitlements.accountState.map { $0 == .active ? AccountState.active : AccountState.locked }
                        )
                        let consumption = item.consumption.map {
                            EntitlementConsumption(
                                name: $0.name,
                                value: Int64($0.value),
                                available: Int64($0.available),
                                consumed: Int64($0.consumed),
                                firstConsumedAt: $0.firstConsumedAtEpochMs.map { Date(millisecondsSinceEpoch: $0) },
                                lastConsumedAt: $0.lastConsumedAtEpochMs.map { Date(millisecondsSinceEpoch: $0) }
                            )
                        }
                        userEntitlementsConsumption = UserEntitlementsConsumption(entitlements: entitlements, consumption: consumption)
                    }
                    continuation.resume(returning: userEntitlementsConsumption)
                }
            )
        })
    }

    public func addEntitlementsSetWithName(
        _ name: String,
        description: String?,
        entitlements: [Entitlement]
    ) async throws -> EntitlementsSet {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitlementsSet, Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.AddEntitlementsSetMutation(
                    input: GraphQL.AddEntitlementsSetInput(
                        description: description,
                        entitlements: entitlements.map {
                            GraphQL.EntitlementInput(description: $0.description, name: $0.name, value: Double($0.value))
                        },
                        name: name
                    )
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.addEntitlementsSet else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: EntitlementsSet(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            name: item.name,
                            description: item.description,
                            entitlements: item.entitlements.map {
                                Entitlement(name: $0.name, description: $0.description, value: Int64($0.value))
                            }
                        )
                    )
                }
            )
        })
    }

    public func setEntitlementsSetWithName(
        _ name: String,
        description: String?,
        entitlements: [Entitlement]
    ) async throws -> EntitlementsSet {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitlementsSet, Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.SetEntitlementsSetMutation(
                    input: GraphQL.SetEntitlementsSetInput(
                        description: description,
                        entitlements: entitlements.map {
                            GraphQL.EntitlementInput(description: $0.description, name: $0.name, value: Double($0.value))
                        },
                        name: name
                    )
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.setEntitlementsSet else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: EntitlementsSet(
                            createdAt: Date(millisecondsSinceEpoch: item.createdAtEpochMs),
                            updatedAt: Date(millisecondsSinceEpoch: item.updatedAtEpochMs),
                            version: item.version,
                            name: item.name,
                            description: item.description,
                            entitlements: item.entitlements.map {
                                Entitlement(name: $0.name, description: $0.description, value: Int64($0.value))
                            }
                        )
                    )
                }
            )
        })
    }

    public func removeEntitlementsSetWithName(
        _ name: String
    ) async throws -> EntitlementsSet? {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitlementsSet?, Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.RemoveEntitlementsSetMutation(input: GraphQL.RemoveEntitlementsSetInput(name: name)),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    continuation.resume(
                        returning: result.data?.removeEntitlementsSet.map {
                            EntitlementsSet(
                                createdAt: Date(millisecondsSinceEpoch: $0.createdAtEpochMs),
                                updatedAt: Date(millisecondsSinceEpoch: $0.updatedAtEpochMs),
                                version: $0.version,
                                name: $0.name,
                                description: $0.description,
                                entitlements: $0.entitlements.map {
                                    Entitlement(name: $0.name, description: $0.description, value: Int64($0.value))
                                }
                            )
                        }
                    )
                }
            )
        })
    }

    public func getEntitlementsSequenceWithName(
        _ name: String
    ) async throws -> EntitlementsSequence? {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitlementsSequence?, Error>) in
            self.graphQLClient.fetch(
                query: GraphQL.GetEntitlementsSequenceQuery(input: GraphQL.GetEntitlementsSequenceInput(name: name)),
                cachePolicy: .fetchIgnoringCacheData,
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    continuation.resume(
                        returning: result.data?.getEntitlementsSequence.map {
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
                    )
                }
            )
        })
    }

    public func listEntitlementsSequencesWithNextToken(
        _ nextToken: String?
    ) async throws -> ListOutput<EntitlementsSequence> {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<ListOutput<EntitlementsSequence>, Error>) in
            self.graphQLClient.fetch(
                query: GraphQL.ListEntitlementsSequencesQuery(nextToken: nextToken),
                cachePolicy: .fetchIgnoringCacheData,
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Query completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
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
                        continuation.resume(returning: ListOutput<EntitlementsSequence>(items: items, nextToken: output.nextToken))
                    } else {
                        continuation.resume(returning: ListOutput<EntitlementsSequence>.empty)
                    }
                }
            )
        })
    }

    public func addEntitlementsSequenceWithName(
        _ name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition]
    ) async throws -> EntitlementsSequence {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitlementsSequence, Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.AddEntitlementsSequenceMutation(
                    input: GraphQL.AddEntitlementsSequenceInput(
                        description: description,
                        name: name,
                        transitions: transitions.map {
                            GraphQL.EntitlementsSequenceTransitionInput(duration: $0.duration, entitlementsSetName: $0.entitlementsSetName)
                        }
                    )
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.addEntitlementsSequence else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: EntitlementsSequence(
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
                }
            )
        })
    }

    public func setEntitlementsSequenceWithName(
        _ name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition]
    ) async throws -> EntitlementsSequence {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitlementsSequence, Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.SetEntitlementsSequenceMutation(
                    input: GraphQL.SetEntitlementsSequenceInput(
                        description: description,
                        name: name,
                        transitions: transitions.map {
                            GraphQL.EntitlementsSequenceTransitionInput(duration: $0.duration, entitlementsSetName: $0.entitlementsSetName)
                        }
                    )
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.setEntitlementsSequence else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: EntitlementsSequence(
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
                }
            )
        })
    }

    public func removeEntitlementsSequenceWithName(
        _ name: String
    ) async throws -> EntitlementsSequence? {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitlementsSequence?, Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.RemoveEntitlementsSequenceMutation(input: GraphQL.RemoveEntitlementsSequenceInput(name: name)),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    continuation.resume(
                        returning: result.data?.removeEntitlementsSequence.map {
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
                    )
                }
            )
        })
    }

    public func applyEntitlementsSequenceToUserWithExternalId(
        _ externalId: String,
        entitlementsSequenceName: String,
        transitionsRelativeToEpochMs: Double?,
        version: Double?
    ) async throws -> UserEntitlements {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<UserEntitlements, Error>) in
            // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
            // Either explicitly setting to nil or relying on the defailt is OK. Nothing is different in the constructed
            // Input except the order of keys in the variable map. Assume that transitionsRelativeToEpochMs suffers
            // from the same issue but this has not been specifically tested.
            let input = version == nil && transitionsRelativeToEpochMs == nil ?
                GraphQL.ApplyEntitlementsSequenceToUserInput(
                    entitlementsSequenceName: entitlementsSequenceName,
                    externalId: externalId
                ) :
            version == nil && transitionsRelativeToEpochMs != nil ?
                GraphQL.ApplyEntitlementsSequenceToUserInput(
                    entitlementsSequenceName: entitlementsSequenceName,
                    externalId: externalId,
                    transitionsRelativeToEpochMs: transitionsRelativeToEpochMs
                ) :
            version != nil && transitionsRelativeToEpochMs == nil ?
                GraphQL.ApplyEntitlementsSequenceToUserInput(
                    entitlementsSequenceName: entitlementsSequenceName,
                    externalId: externalId,
                    transitionsRelativeToEpochMs: nil,
                    version: version
                ) :
            GraphQL.ApplyEntitlementsSequenceToUserInput(
                entitlementsSequenceName: entitlementsSequenceName,
                externalId: externalId,
                transitionsRelativeToEpochMs: transitionsRelativeToEpochMs,
                version: version
            )

            self.graphQLClient.perform(
                mutation: GraphQL.ApplyEntitlementsSequenceToUserMutation(
                    input: input
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.applyEntitlementsSequenceToUser else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: UserEntitlements(
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
                                    value: Int64($0.value)
                                )
                            },
                            expendableEntitlements: item.expendableEntitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: Int64($0.value)
                                )
                            },
                            transitionsRelativeTo: item.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
                            accountState: item.accountState.map { $0 == .active ? AccountState.active : AccountState.locked }
                        )
                    )
                }
            )
        })
    }

    public func applyEntitlementsSequenceToUsers(
        items: [ApplyEntitlementsSequenceItem]
    ) async throws -> [UserEntitlementsResult] {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<[UserEntitlementsResult], Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.ApplyEntitlementsSequenceToUsersMutation(
                    input: GraphQL.ApplyEntitlementsSequenceToUsersInput(
                        operations: items.map {
                            // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
                            // Either explicitly setting to nil or relying on the defailt is OK. Nothing is different in the constructed
                            // Input except the order of keys in the variable map. Assume that transitionsRelativeToEpochMs suffers
                            // from the same issue but this has not been specifically tested.
                            $0.version == nil && $0.transitionsRelativeToEpochMs == nil ?
                                GraphQL.ApplyEntitlementsSequenceToUserInput(
                                    entitlementsSequenceName: $0.entitlementsSequenceName,
                                    externalId: $0.externalId
                                ) :
                            $0.version == nil && $0.transitionsRelativeToEpochMs != nil ?
                                GraphQL.ApplyEntitlementsSequenceToUserInput(
                                    entitlementsSequenceName: $0.entitlementsSequenceName,
                                    externalId: $0.externalId,
                                    transitionsRelativeToEpochMs: $0.transitionsRelativeToEpochMs
                                ) :
                            $0.version != nil && $0.transitionsRelativeToEpochMs == nil ?
                                GraphQL.ApplyEntitlementsSequenceToUserInput(
                                    entitlementsSequenceName: $0.entitlementsSequenceName,
                                    externalId: $0.externalId,
                                    transitionsRelativeToEpochMs: nil,
                                    version: $0.version
                                ) :
                            GraphQL.ApplyEntitlementsSequenceToUserInput(
                                entitlementsSequenceName: $0.entitlementsSequenceName,
                                externalId: $0.externalId,
                                transitionsRelativeToEpochMs: $0.transitionsRelativeToEpochMs,
                                version: $0.version
                            )
                        }
                    )
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let results = result.data?.applyEntitlementsSequenceToUsers else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: results.map {
                            guard let success = $0.asExternalUserEntitlements else {
                                guard let failure = $0.asExternalUserEntitlementsError else {
                                        return .failure(.fatalError(
                                            description: "Unexpected type \($0.__typename) returned"))
                                }

                                guard let error = SudoEntitlementsAdminClientError.fromGraphQLErrorType(failure.error) else {
                                    return .failure(.fatalError(description: "Unexpected service error: \(failure.error)"))
                                }
                                return .failure(error)

                            }

                            return .success(UserEntitlements(
                                createdAt: Date(millisecondsSinceEpoch: success.createdAtEpochMs),
                                updatedAt: Date(millisecondsSinceEpoch: success.updatedAtEpochMs),
                                version: success.version,
                                externalId: success.externalId,
                                owner: success.owner,
                                entitlementsSetName: success.entitlementsSetName,
                                entitlementsSequenceName: success.entitlementsSequenceName,
                                entitlements: success.entitlements.map {
                                    Entitlement(
                                        name: $0.name,
                                        description: $0.description,
                                        value: Int64($0.value)
                                    )
                                },
                                expendableEntitlements: success.expendableEntitlements.map {
                                    Entitlement(
                                        name: $0.name,
                                        description: $0.description,
                                        value: Int64($0.value)
                                    )
                                },
                                transitionsRelativeTo: success.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
                                accountState: success.accountState.map { $0 == .active ? AccountState.active : AccountState.locked }
))
                        }
                    )
                }
            )
        })
    }

    public func applyEntitlementsSetToUserWithExternalId(
        _ externalId: String,
        entitlementsSetName: String,
        version: Double?
    ) async throws -> UserEntitlements {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<UserEntitlements, Error>) in
            // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
            // Either explicitly setting to nil or relying on the defailt is OK. Nothing is different in the constructed
            // Input except the order of keys in the variable map.
            let input = version == nil ?
                GraphQL.ApplyEntitlementsSetToUserInput(
                    entitlementsSetName: entitlementsSetName,
                    externalId: externalId
                ) :
                GraphQL.ApplyEntitlementsSetToUserInput(
                    entitlementsSetName: entitlementsSetName,
                    externalId: externalId,
                    version: version
                )
            self.graphQLClient.perform(
                mutation: GraphQL.ApplyEntitlementsSetToUserMutation(
                    input: input
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.applyEntitlementsSetToUser else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: UserEntitlements(
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
                                    value: Int64($0.value)
                                )
                            },
                            expendableEntitlements: item.expendableEntitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: Int64($0.value)
                                )
                            },
                            transitionsRelativeTo: item.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
                            accountState: item.accountState.map { $0 == .active ? AccountState.active : AccountState.locked }
                        )
                    )
                }
            )
        })
    }

    public func applyEntitlementsSetToUsers(
        items: [ApplyEntitlementsSetItem]
    ) async throws -> [UserEntitlementsResult] {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<[UserEntitlementsResult], Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.ApplyEntitlementsSetToUsersMutation(
                    input: GraphQL.ApplyEntitlementsSetToUsersInput(
                        operations: items.map {
                            // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
                            // Either explicitly setting to nil or relying on the defailt is OK. Nothing is different in the constructed
                            // Input except the order of keys in the variable map.
                            $0.version == nil ?
                                GraphQL.ApplyEntitlementsSetToUserInput(
                                    entitlementsSetName: $0.entitlementsSetName,
                                    externalId: $0.externalId
                                ) :
                                GraphQL.ApplyEntitlementsSetToUserInput(
                                    entitlementsSetName: $0.entitlementsSetName,
                                    externalId: $0.externalId,
                                    version: $0.version
                                )
                        }
                    )
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let results = result.data?.applyEntitlementsSetToUsers else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: results.map {
                            guard let success = $0.asExternalUserEntitlements else {
                                guard let failure = $0.asExternalUserEntitlementsError else {
                                        return .failure(.fatalError(
                                            description: "Unexpected type \($0.__typename) returned"))
                                }

                                guard let error = SudoEntitlementsAdminClientError.fromGraphQLErrorType(failure.error) else {
                                    return .failure(.fatalError(description: "Unexpected service error: \(failure.error)"))
                                }
                                return .failure(error)

                            }

                            return .success(UserEntitlements(
                                createdAt: Date(millisecondsSinceEpoch: success.createdAtEpochMs),
                                updatedAt: Date(millisecondsSinceEpoch: success.updatedAtEpochMs),
                                version: success.version,
                                externalId: success.externalId,
                                owner: success.owner,
                                entitlementsSetName: success.entitlementsSetName,
                                entitlementsSequenceName: success.entitlementsSequenceName,
                                entitlements: success.entitlements.map {
                                    Entitlement(
                                        name: $0.name,
                                        description: $0.description,
                                        value: Int64($0.value)
                                    )
                                },
                                expendableEntitlements: success.expendableEntitlements.map {
                                    Entitlement(
                                        name: $0.name,
                                        description: $0.description,
                                        value: Int64($0.value)
                                    )
                                },
                                transitionsRelativeTo: success.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
                                accountState: success.accountState.map { $0 == .active ? AccountState.active : AccountState.locked }
))
                        }
                    )
                }
            )
        })
    }

    public func applyEntitlementsToUserWithExternalId(
        _ externalId: String,
        entitlements: [Entitlement],
        version: Double?
    ) async throws -> UserEntitlements {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<UserEntitlements, Error>) in
            // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
            // Either explicitly setting to nil or relying on the defailt is OK. Nothing is different in the constructed
            // Input except the order of keys in the variable map.
            let input = version == nil ? GraphQL.ApplyEntitlementsToUserInput(
                entitlements: entitlements.map {
                    GraphQL.EntitlementInput(description: $0.description, name: $0.name, value: Double($0.value))
                },
                externalId: externalId,
                version: nil
            ) : GraphQL.ApplyEntitlementsToUserInput(
                entitlements: entitlements.map {
                    GraphQL.EntitlementInput(description: $0.description, name: $0.name, value: Double($0.value))
                },
                externalId: externalId,
                version: version
            )
            self.graphQLClient.perform(
                mutation: GraphQL.ApplyEntitlementsToUserMutation(
                    input: input
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.applyEntitlementsToUser else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: UserEntitlements(
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
                                    value: Int64($0.value)
                                )
                            },
                            expendableEntitlements: item.expendableEntitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: Int64($0.value)
                                )
                            },
                            transitionsRelativeTo: item.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
                            accountState: item.accountState.map { $0 == .active ? AccountState.active : AccountState.locked }
                        )
                    )
                }
            )
        })
    }

    public func applyEntitlementsToUsers(
        items: [ApplyEntitlementsItem]
    ) async throws -> [UserEntitlementsResult] {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<[UserEntitlementsResult], Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.ApplyEntitlementsToUsersMutation(
                    input: GraphQL.ApplyEntitlementsToUsersInput(
                        operations: items.map {
                            // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
                            // Either explicitly setting to nil or relying on the defailt is OK. Nothing is different in the constructed
                            // Input except the order of keys in the variable map.
                            $0.version == nil ?
                            GraphQL.ApplyEntitlementsToUserInput(
                                entitlements: $0.entitlements.map {
                                        GraphQL.EntitlementInput(
                                            description: $0.description,
                                            name: $0.name,
                                            value: Double($0.value))
                                },
                                externalId: $0.externalId
                            ) : GraphQL.ApplyEntitlementsToUserInput(
                                entitlements: $0.entitlements.map {
                                        GraphQL.EntitlementInput(
                                            description: $0.description,
                                            name: $0.name,
                                            value: Double($0.value))
                                },
                                externalId: $0.externalId,
                                version: $0.version
                            )
                        }
                    )
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let results = result.data?.applyEntitlementsToUsers else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: results.map {
                            guard let success = $0.asExternalUserEntitlements else {
                                guard let failure = $0.asExternalUserEntitlementsError else {
                                        return .failure(.fatalError(description: "Unexpected result type: \($0.__typename) returned"))
                                }

                                guard let error = SudoEntitlementsAdminClientError.fromGraphQLErrorType(failure.error) else {
                                    return .failure(.fatalError(description: "Unexpected service error: \(failure.error)"))
                                }
                                return .failure(error)

                            }

                            return .success(UserEntitlements(
                                createdAt: Date(millisecondsSinceEpoch: success.createdAtEpochMs),
                                updatedAt: Date(millisecondsSinceEpoch: success.updatedAtEpochMs),
                                version: success.version,
                                externalId: success.externalId,
                                owner: success.owner,
                                entitlementsSetName: success.entitlementsSetName,
                                entitlementsSequenceName: success.entitlementsSequenceName,
                                entitlements: success.entitlements.map {
                                    Entitlement(
                                        name: $0.name,
                                        description: $0.description,
                                        value: Int64($0.value)
                                    )
                                },
                                expendableEntitlements: success.expendableEntitlements.map {
                                    Entitlement(
                                        name: $0.name,
                                        description: $0.description,
                                        value: Int64($0.value)
                                    )
                                },
                                transitionsRelativeTo: success.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
                                accountState: success.accountState.map { $0 == .active ? AccountState.active : AccountState.locked }
))
                        }
                    )
                }
            )
        })
    }

    public func applyExpendableEntitlementsToUserWithExternalId(
        _ externalId: String,
        expendableEntitlements: [Entitlement],
        requestId: String
    ) async throws -> UserEntitlements {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<UserEntitlements, Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.ApplyExpendableEntitlementsToUserMutation(
                    input: GraphQL.ApplyExpendableEntitlementsToUserInput(
                        expendableEntitlements: expendableEntitlements.map {
                            GraphQL.EntitlementInput(description: $0.description, name: $0.name, value: Double($0.value))
                        },
                        externalId: externalId,
                        requestId: requestId
                    )
                ),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    guard let item = result.data?.applyExpendableEntitlementsToUser else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but data is missing."
                            )
                        )
                    }

                    continuation.resume(
                        returning: UserEntitlements(
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
                                    value: Int64($0.value)
                                )
                            },
                            expendableEntitlements: item.expendableEntitlements.map {
                                Entitlement(
                                    name: $0.name,
                                    description: $0.description,
                                    value: Int64($0.value)
                                )
                            },
                            transitionsRelativeTo: item.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
                            accountState: item.accountState.map { $0 == .active ? AccountState.active : AccountState.locked }
                        )
                    )
                }
            )
        })
    }

    public func removeEntitledUserWithExternalId(
        _ externalId: String
    ) async throws -> EntitledUser? {
        return try await withCheckedThrowingContinuation({ (continuation: CheckedContinuation<EntitledUser?, Error>) in
            self.graphQLClient.perform(
                mutation: GraphQL.RemoveEntitledUserMutation(input: GraphQL.RemoveEntitledUserInput(externalId: externalId)),
                resultHandler: { (result, error) in
                    if let error = error {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromAppSyncClientError(error: error))
                    }

                    guard let result = result else {
                        return continuation.resume(
                            throwing: SudoEntitlementsAdminClientError.fatalError(
                                description: "Mutation completed successfully but result is missing."
                            )
                        )
                    }

                    if let error = result.errors?.first {
                        return continuation.resume(throwing: SudoEntitlementsAdminClientError.fromGraphQLError(error: error))
                    }

                    continuation.resume(
                        returning: result.data?.removeEntitledUser.map {
                            EntitledUser(externalId: $0.externalId)
                        }
                    )
                }
            )
        })
    }

}
