//
// Copyright © 2025 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Amplify
import Foundation
import SudoLogging

/// Utility for transforming error types output by the AWSAPIPlugin to the relevant `SudoEntitlementsAdminClientError`.
enum SudoEntitlementsAdminClientErrorTransformer {

    // MARK: - Supplementary

    struct SudoPlatformServiceError {
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

    // MARK: - Methods

    static func transformError<T: Decodable>(_ error: Error, type: T.Type) -> SudoEntitlementsAdminClientError {
        if let operationError = error as? SudoEntitlementsAdminClientError {
            return operationError
        }
        if let graphQLResponseError = error as? GraphQLResponseError<T> {
            return transformGraphQLResponseError(graphQLResponseError)
        }
        if let apiError = error as? APIError {
            return transformApiError(apiError)
        }
        return SudoEntitlementsAdminClientError.graphQLError(cause: error)
    }

    static func transformGraphQLResponseError<T: Decodable>(_ error: GraphQLResponseError<T>) -> SudoEntitlementsAdminClientError {
        switch error {
        case .error(let graphQLErrors), .partial(_, let graphQLErrors):
            for graphQLError in graphQLErrors {
                if let transformedGraphQLError = transformGraphQLError(graphQLError) {
                    return transformedGraphQLError
                }
            }
            return .fatalError(description: "GraphQL operation failed but error type was not found in the response.")

        case .transformationError(_, let apiError):
            return transformApiError(apiError)

        case .unknown(let description, _, _):
            return .fatalError(description: description)
        }
    }

    static func transformApiError(_ apiError: APIError) -> SudoEntitlementsAdminClientError {
        if apiError.underlyingError is AuthError {
            return SudoEntitlementsAdminClientError.notAuthorized
        }
        switch apiError {
        case .unknown:
            return .appSyncClientError(cause: apiError)

        case .invalidURL:
            return .invalidInput

        case .operationError:
            return .serviceError

        case .networkError:
            return .requestFailed(response: nil, cause: apiError.underlyingError)

        case .httpStatusError(let statusCode, let response):
            if statusCode == 401 {
                return .notAuthorized
            }
            return .requestFailed(response: response, cause: apiError)

        case .invalidConfiguration(let description, _, _):
            return .fatalError(description: "Invalid configuration: \(description)")

        case .pluginError(let error):
            if error is AuthError {
                return .notAuthorized
            }
            return .fatalError(description: "Amplify plugin error: \(error.errorDescription)")
        }
    }

    static func transformGraphQLError(_ graphQLError: GraphQLError) -> SudoEntitlementsAdminClientError? {
        guard let errorType = graphQLError.extensions?[SudoPlatformServiceError.type]?.stringValue else {
            return nil
        }
        if let error = transformGraphQLErrorType(errorType) {
            return error
        }
        return .graphQLError(cause: graphQLError)
    }

    static func transformGraphQLErrorType(_ errorType: String) -> SudoEntitlementsAdminClientError? {
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
