//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import AWSPluginsCore
import Foundation

extension APISwiftGraphQLOperation {

    /// Will transform the type AppSync generated code to an Amplify GraphQL request.
    /// - Parameter apiName: The service name.
    /// - Returns: A request to the GraphQL backed.
    func transformToGraphQLRequest(apiName: String) -> GraphQLRequest<Data> {
        let variablesDict = variables?.jsonValue as? [String: Any]
        return GraphQLRequest<Data>(
            apiName: apiName,
            document: Self.requestString,
            variables: variablesDict,
            responseType: Data.self,
            authMode: AWSAuthorizationType.apiKey
        )
    }
}
