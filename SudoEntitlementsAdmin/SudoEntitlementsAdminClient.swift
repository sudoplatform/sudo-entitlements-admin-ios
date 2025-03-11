//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation
import SudoLogging
import SudoConfigManager

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
