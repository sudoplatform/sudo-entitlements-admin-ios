//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// This utility takes care of transforming the App Sync codegen types to the equivalent public type
/// defined in this library.  The equivalent codegen types are conformed to a common protocol
/// to reduce the duplication of transformation logic.
enum ApiEntitlementsTransformer {

    // MARK: - Entitlements Set

    static func transformEntitlementsSet(_ entitlementsSet: any ApiEntitlementsSet) -> EntitlementsSet {
        EntitlementsSet(
            createdAt: Date(millisecondsSinceEpoch: entitlementsSet.createdAtEpochMs),
            updatedAt: Date(millisecondsSinceEpoch: entitlementsSet.updatedAtEpochMs),
            version: entitlementsSet.version,
            name: entitlementsSet.name,
            description: entitlementsSet.description,
            entitlements: entitlementsSet.entitlements.map(transformEntitlement)
        )
    }

    static func transformEntitlement(_ entitlement: ApiEntitlement) -> Entitlement {
        Entitlement(
            name: entitlement.name,
            description: entitlement.description,
            value: Int64(entitlement.value)
        )
    }

    // MARK: - Entitlements Sequence

    static func transformEntitlementSequence(_ sequence: any ApiEntitlementsSequence) -> EntitlementsSequence {
        EntitlementsSequence(
            createdAt: Date(millisecondsSinceEpoch: sequence.createdAtEpochMs),
            updatedAt: Date(millisecondsSinceEpoch: sequence.updatedAtEpochMs),
            version: sequence.version,
            name: sequence.name,
            description: sequence.description,
            transitions: sequence.transitions.map(transformEntitlementSequenceTransition)
        )
    }

    static func transformEntitlementSequenceTransition(_ transition: ApiEntitlementsSequenceTransition) -> EntitlementsSequenceTransition {
        EntitlementsSequenceTransition(
            entitlementsSetName: transition.entitlementsSetName,
            duration: transition.duration
        )
    }

    // MARK: - User Entitlements

    static func transformUserEntitlements(_ entitlements: any ApiUserEntitlements) -> UserEntitlements {
        UserEntitlements(
            createdAt: Date(millisecondsSinceEpoch: entitlements.createdAtEpochMs),
            updatedAt: Date(millisecondsSinceEpoch: entitlements.updatedAtEpochMs),
            version: entitlements.version,
            externalId: entitlements.externalId,
            owner: entitlements.owner,
            entitlementsSetName: entitlements.entitlementsSetName,
            entitlementsSequenceName: entitlements.entitlementsSequenceName,
            entitlements: entitlements.entitlements.map {
                Entitlement(
                    name: $0.name,
                    description: $0.description,
                    value: Int64($0.value)
                )
            },
            expendableEntitlements: entitlements.expendableEntitlements.map {
                Entitlement(
                    name: $0.name,
                    description: $0.description,
                    value: Int64($0.value)
                )
            },
            transitionsRelativeTo: entitlements.transitionsRelativeToEpochMs.map { Date(millisecondsSinceEpoch: $0 ) },
            accountState: entitlements.accountState.map(transformAccountStates)
        )
    }

    static func transformAccountStates(_ accountStates: any ApiAccountStates) -> AccountState {
        return accountStates.rawValue == "ACTIVE" ? .active : .locked
    }
}
