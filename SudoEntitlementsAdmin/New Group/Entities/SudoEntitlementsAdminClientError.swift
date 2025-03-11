//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

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
            (.appSyncClientError, appSyncClientError):
            // We return false for these since we can't compare the error properties of this error. We list these here for completeness.
            return false
        case (.fatalError(let lhsDescription), .fatalError(let rhsDescription)):
            return lhsDescription == rhsDescription
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
}
