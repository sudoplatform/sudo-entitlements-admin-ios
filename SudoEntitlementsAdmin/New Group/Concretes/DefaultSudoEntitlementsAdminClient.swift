//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoLogging
import SudoConfigManager

/// Default implementation of `SudoEntitlementsAdminClient`.
public class DefaultSudoEntitlementsAdminClient: SudoEntitlementsAdminClient {

    // MARK: - Supplementary

    enum Config {

        /// Configuration namespace.
        enum Namespace {
            static let adminConsoleProjectService = "adminConsoleProjectService"
        }

        enum Parameter {
            /// AWS region hosting Admin API.
            static let region = "region"
            /// API URL.
            static let apiUrl = "apiUrl"
        }
    }

    // MARK: - Properties

    /// GraphQL client for communicating with the Entitlements Admin API.  Mutable for unit testing purposes.
    var graphQLClient: GraphQLClient

    /// Default logger for the client.
    let logger: Logger

    // MARK: - Lifecycle

    /// Intializes a new `DefaultSudoEntitlementsAdminClient` instance.
    /// - Parameters:
    ///   - apiKey: API key used to authenticate to the Admin Service.
    ///   - logger: A logger to use for logging messages. If none provided then a default internal logger will be used.
    /// - Throws: `SudoEntitlementsAdminClientError`
    convenience public init(apiKey: String, logger: Logger? = nil) throws {
        guard let configManager = SudoConfigManagerFactory.instance.getConfigManager(
            name: SudoConfigManagerFactory.Constants.defaultConfigManagerName
        ) else {
            throw SudoEntitlementsAdminClientError.invalidConfig
        }
        guard let config = configManager.getConfigSet(
            namespace: Config.Namespace.adminConsoleProjectService
        ) else {
            throw SudoEntitlementsAdminClientError.adminServiceConfigNotFound
        }
        try self.init(config: config, apiKey: apiKey, logger: logger)
    }

    /// Initializes a new `DefaultSudoEntitlementsAdminClient` instance with the specified backend configuration.
    /// - Parameters:
    ///   - config: Configuration parameters for the client.
    ///   - apiKey: API key used to authenticate to the Admin Service.
    ///   - logger: A logger to use for logging messages. If none provided then a default internal logger will be used.
    /// - Throws: `SudoEntitlementsAdminClientError`
    public init(config: [String: Any], apiKey: String, logger: Logger? = nil) throws {
        self.logger = logger ?? Logger.SudoEntitlementsAdminClientLogger
        guard
            let endpoint = config[Config.Parameter.apiUrl] as? String,
            let region = config[Config.Parameter.region] as? String
        else {
            throw SudoEntitlementsAdminClientError.invalidConfig
        }
        self.graphQLClient = try DefaultGraphQLClient(
            apiName: Config.Namespace.adminConsoleProjectService,
            endpoint: endpoint,
            region: region,
            apiKey: apiKey
        )
    }

    // MARK: - Conformance: SudoEntitlementsAdminClient

    public func getEntitlementsSetWithName(_ name: String) async throws -> EntitlementsSet? {
        let query = GraphQL.GetEntitlementsSetQuery(input: GraphQL.GetEntitlementsSetInput(name: name))
        let result = try await graphQLClient.query(query)
        return result.getEntitlementsSet.map(ApiEntitlementsTransformer.transformEntitlementsSet)
    }

    public func listEntitlementsSetsWithNextToken(_ nextToken: String?) async throws -> ListOutput<EntitlementsSet> {
        let query = GraphQL.ListEntitlementsSetsQuery(nextToken: nextToken)
        let result = try await graphQLClient.query(query)
        let entitlements = result.listEntitlementsSets.items.map(ApiEntitlementsTransformer.transformEntitlementsSet)
        return ListOutput<EntitlementsSet>(items: entitlements, nextToken: result.listEntitlementsSets.nextToken)
    }

    public func getEntitlementsForUserWithExternalId(_ externalId: String) async throws -> UserEntitlementsConsumption? {
        let query = GraphQL.GetEntitlementsForUserQuery(input: GraphQL.GetEntitlementsForUserInput(externalId: externalId))
        let result = try await graphQLClient.query(query)
        let entitlements = ApiEntitlementsTransformer.transformUserEntitlements(result.getEntitlementsForUser.entitlements)
        let consumption = result.getEntitlementsForUser.consumption.map {
            EntitlementConsumption(
                name: $0.name,
                value: Int64($0.value),
                available: Int64($0.available),
                consumed: Int64($0.consumed),
                firstConsumedAt: $0.firstConsumedAtEpochMs.map { Date(millisecondsSinceEpoch: $0) },
                lastConsumedAt: $0.lastConsumedAtEpochMs.map { Date(millisecondsSinceEpoch: $0) }
            )
        }
        return UserEntitlementsConsumption(entitlements: entitlements, consumption: consumption)
    }

    public func addEntitlementsSetWithName(
        _ name: String,
        description: String?,
        entitlements: [Entitlement]
    ) async throws -> EntitlementsSet {
        let mutation = GraphQL.AddEntitlementsSetMutation(
            input: GraphQL.AddEntitlementsSetInput(
                description: description,
                entitlements: entitlements.map {
                    GraphQL.EntitlementInput(description: $0.description, name: $0.name, value: Double($0.value))
                },
                name: name
            )
        )
        let result = try await graphQLClient.mutate(mutation)
        return ApiEntitlementsTransformer.transformEntitlementsSet(result.addEntitlementsSet)
    }

    public func setEntitlementsSetWithName(
        _ name: String,
        description: String?,
        entitlements: [Entitlement]
    ) async throws -> EntitlementsSet {
        let mutation = GraphQL.SetEntitlementsSetMutation(
            input: GraphQL.SetEntitlementsSetInput(
                description: description,
                entitlements: entitlements.map {
                    GraphQL.EntitlementInput(description: $0.description, name: $0.name, value: Double($0.value))
                },
                name: name
            )
        )
        let result = try await graphQLClient.mutate(mutation)
        return ApiEntitlementsTransformer.transformEntitlementsSet(result.setEntitlementsSet)
    }

    public func removeEntitlementsSetWithName(_ name: String) async throws -> EntitlementsSet? {
        let mutation = GraphQL.RemoveEntitlementsSetMutation(input: GraphQL.RemoveEntitlementsSetInput(name: name))
        let result = try await graphQLClient.mutate(mutation)
        return result.removeEntitlementsSet.map(ApiEntitlementsTransformer.transformEntitlementsSet)
    }

    public func getEntitlementsSequenceWithName(_ name: String) async throws -> EntitlementsSequence? {
        let query = GraphQL.GetEntitlementsSequenceQuery(input: GraphQL.GetEntitlementsSequenceInput(name: name))
        let result = try await graphQLClient.query(query)
        return result.getEntitlementsSequence.map(ApiEntitlementsTransformer.transformEntitlementSequence)
    }

    public func listEntitlementsSequencesWithNextToken(_ nextToken: String?) async throws -> ListOutput<EntitlementsSequence> {
        let query = GraphQL.ListEntitlementsSequencesQuery(nextToken: nextToken)
        let result = try await graphQLClient.query(query)
        let entitlements = result.listEntitlementsSequences.items.map(ApiEntitlementsTransformer.transformEntitlementSequence)
        return ListOutput(items: entitlements, nextToken: result.listEntitlementsSequences.nextToken)
    }

    public func addEntitlementsSequenceWithName(
        _ name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition]
    ) async throws -> EntitlementsSequence {
        let mutation = GraphQL.AddEntitlementsSequenceMutation(
            input: GraphQL.AddEntitlementsSequenceInput(
                description: description,
                name: name,
                transitions: transitions.map {
                    GraphQL.EntitlementsSequenceTransitionInput(duration: $0.duration, entitlementsSetName: $0.entitlementsSetName)
                }
            )
        )
        let result = try await graphQLClient.mutate(mutation)
        return ApiEntitlementsTransformer.transformEntitlementSequence(result.addEntitlementsSequence)
    }

    public func setEntitlementsSequenceWithName(
        _ name: String,
        description: String,
        transitions: [EntitlementsSequenceTransition]
    ) async throws -> EntitlementsSequence {
        let mutation = GraphQL.SetEntitlementsSequenceMutation(
            input: GraphQL.SetEntitlementsSequenceInput(
                description: description,
                name: name,
                transitions: transitions.map {
                    GraphQL.EntitlementsSequenceTransitionInput(duration: $0.duration, entitlementsSetName: $0.entitlementsSetName)
                }
            )
        )
        let result = try await graphQLClient.mutate(mutation)
        return ApiEntitlementsTransformer.transformEntitlementSequence(result.setEntitlementsSequence)
    }

    public func removeEntitlementsSequenceWithName(_ name: String) async throws -> EntitlementsSequence? {
        let mutation = GraphQL.RemoveEntitlementsSequenceMutation(input: GraphQL.RemoveEntitlementsSequenceInput(name: name))
        let result = try await graphQLClient.mutate(mutation)
        return result.removeEntitlementsSequence.map(ApiEntitlementsTransformer.transformEntitlementSequence)
    }

    public func applyEntitlementsSequenceToUserWithExternalId(
        _ externalId: String,
        entitlementsSequenceName: String,
        transitionsRelativeToEpochMs: Double?,
        version: Double?
    ) async throws -> UserEntitlements {
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
        let mutation = GraphQL.ApplyEntitlementsSequenceToUserMutation(input: input)
        let result = try await graphQLClient.mutate(mutation)
        return ApiEntitlementsTransformer.transformUserEntitlements(result.applyEntitlementsSequenceToUser)
    }

    public func applyEntitlementsSequenceToUsers(items: [ApplyEntitlementsSequenceItem]) async throws -> [UserEntitlementsResult] {
        let mutation = GraphQL.ApplyEntitlementsSequenceToUsersMutation(
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
        )
        let result = try await graphQLClient.mutate(mutation)
        let userEntitlementResults: [UserEntitlementsResult] = result.applyEntitlementsSequenceToUsers.map {
            if let externalUserEntitlements = $0.asExternalUserEntitlements {
                let userEntitlements = ApiEntitlementsTransformer.transformUserEntitlements(externalUserEntitlements)
                return .success(userEntitlements)
            } else if let error = $0.asExternalUserEntitlementsError {
                let transformedError = SudoEntitlementsAdminClientErrorTransformer.transformGraphQLErrorType(error.error)
                return .failure(transformedError ?? .fatalError(description: error.error))
            } else {
                return .failure(.fatalError(description: "Unexpected type \($0.__typename) returned"))
            }
        }
        return userEntitlementResults
    }

    public func applyEntitlementsSetToUserWithExternalId(
        _ externalId: String,
        entitlementsSetName: String,
        version: Double?
    ) async throws -> UserEntitlements {
        // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
        // Either explicitly setting to nil or relying on the default is OK. Nothing is different in the constructed
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
        let mutation = GraphQL.ApplyEntitlementsSetToUserMutation(input: input)
        let result = try await graphQLClient.mutate(mutation)
        return ApiEntitlementsTransformer.transformUserEntitlements(result.applyEntitlementsSetToUser)
    }

    public func applyEntitlementsSetToUsers(items: [ApplyEntitlementsSetItem]) async throws -> [UserEntitlementsResult] {
        let mutation = GraphQL.ApplyEntitlementsSetToUsersMutation(
            input: GraphQL.ApplyEntitlementsSetToUsersInput(
                operations: items.map {
                    // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
                    // Either explicitly setting to nil or relying on the default is OK. Nothing is different in the constructed
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
        )
        let result = try await graphQLClient.mutate(mutation)
        let userEntitlementResults: [UserEntitlementsResult] = result.applyEntitlementsSetToUsers.map {
            if let externalUserEntitlements = $0.asExternalUserEntitlements {
                let userEntitlements = ApiEntitlementsTransformer.transformUserEntitlements(externalUserEntitlements)
                return .success(userEntitlements)
            } else if let error = $0.asExternalUserEntitlementsError {
                let transformedError = SudoEntitlementsAdminClientErrorTransformer.transformGraphQLErrorType(error.error)
                return .failure(transformedError ?? .fatalError(description: error.error))
            } else {
                return .failure(.fatalError(description: "Unexpected type \($0.__typename) returned"))
            }
        }
        return userEntitlementResults
    }

    public func applyEntitlementsToUserWithExternalId(
        _ externalId: String,
        entitlements: [Entitlement],
        version: Double?
    ) async throws -> UserEntitlements {
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
        let mutation = GraphQL.ApplyEntitlementsToUserMutation(input: input)
        let result = try await graphQLClient.mutate(mutation)
        return ApiEntitlementsTransformer.transformUserEntitlements(result.applyEntitlementsToUser)
    }

    public func applyEntitlementsToUsers(items: [ApplyEntitlementsItem]) async throws -> [UserEntitlementsResult] {
        let mutation = GraphQL.ApplyEntitlementsToUsersMutation(
            input: GraphQL.ApplyEntitlementsToUsersInput(
                operations: items.map {
                    // Weirdly, if version is nil and we pass version in by reference then we get bad input to the service.
                    // Either explicitly setting to nil or relying on the default is OK. Nothing is different in the constructed
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
        )
        let result = try await graphQLClient.mutate(mutation)
        let userEntitlementResults: [UserEntitlementsResult] = result.applyEntitlementsToUsers.map {
            if let externalUserEntitlements = $0.asExternalUserEntitlements {
                let userEntitlements = ApiEntitlementsTransformer.transformUserEntitlements(externalUserEntitlements)
                return .success(userEntitlements)
            } else if let error = $0.asExternalUserEntitlementsError {
                let transformedError = SudoEntitlementsAdminClientErrorTransformer.transformGraphQLErrorType(error.error)
                return .failure(transformedError ?? .fatalError(description: error.error))
            } else {
                return .failure(.fatalError(description: "Unexpected type \($0.__typename) returned"))
            }
        }
        return userEntitlementResults
    }

    public func applyExpendableEntitlementsToUserWithExternalId(
        _ externalId: String,
        expendableEntitlements: [Entitlement],
        requestId: String
    ) async throws -> UserEntitlements {
        let mutation = GraphQL.ApplyExpendableEntitlementsToUserMutation(
            input: GraphQL.ApplyExpendableEntitlementsToUserInput(
                expendableEntitlements: expendableEntitlements.map {
                    GraphQL.EntitlementInput(description: $0.description, name: $0.name, value: Double($0.value))
                },
                externalId: externalId,
                requestId: requestId
            )
        )
        let result = try await graphQLClient.mutate(mutation)
        return ApiEntitlementsTransformer.transformUserEntitlements(result.applyExpendableEntitlementsToUser)
    }

    public func removeEntitledUserWithExternalId(_ externalId: String) async throws -> EntitledUser? {
        let mutation = GraphQL.RemoveEntitledUserMutation(input: GraphQL.RemoveEntitledUserInput(externalId: externalId))
        let result = try await graphQLClient.mutate(mutation)
        return result.removeEntitledUser.map { EntitledUser(externalId: $0.externalId) }
    }
}
