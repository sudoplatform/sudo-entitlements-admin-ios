//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSAPIPlugin
import enum AWSPluginsCore.AWSAuthorizationType
import Foundation

/// A default implementation of `GraphQLClient` that interacts with AWS GraphQL backend.
/// This class handles authentication, request construction, and execution of GraphQL queries and mutations.
class DefaultGraphQLClient: GraphQLClient {

    // MARK: - Properties

    /// The name of graphQL API being invoked.
    let apiName: String

    /// The AWS Amplify API plugin used for making network requests.
    let apiPlugin: AWSAPIPlugin

    // MARK: - Lifecycle

    /// Initializes a `GraphQLClient` conforming instances for making requests to an AWS GraphQL backend..
    /// - Parameters:
    ///   - apiName: The name of graphQL API being invoked.
    ///   - endpoint: The GraphQL API endpoint URL.
    ///   - region: The AWS region where the API is deployed.
    ///   - apiKey: The API key used for authorization.
    init(apiName: String, endpoint: String, region: String, apiKey: String) throws {
        self.apiName = apiName
        apiPlugin = AWSAPIPlugin()
        let pluginConfig: [String: String] = [
            "endpointType": "GraphQL",
            "endpoint": endpoint,
            "region": region,
            "authorizationType": AWSAuthorizationType.apiKey.rawValue,
            "apiKey": apiKey
        ]
        let config = JSONValue.object([
            apiName: JSONValue.object(pluginConfig.mapValues(JSONValue.string))
        ])
        try apiPlugin.configure(using: config)
    }

    // MARK: - Conformance: GraphQLClient

    func query<Q: GraphQLQuery>(_ query: Q) async throws -> Q.Data {
        let request = query.transformToGraphQLRequest(apiName: apiName)
        do {
            return try await apiPlugin.query(request: request).get()
        } catch {
            throw SudoEntitlementsAdminClientErrorTransformer.transformError(error, type: Q.Data.self)
        }
    }

    func mutate<M: GraphQLMutation>(_ mutation: M) async throws -> M.Data {
        let request = mutation.transformToGraphQLRequest(apiName: apiName)
        do {
            return try await apiPlugin.query(request: request).get()
        } catch {
            throw SudoEntitlementsAdminClientErrorTransformer.transformError(error, type: M.Data.self)
        }
    }
}
