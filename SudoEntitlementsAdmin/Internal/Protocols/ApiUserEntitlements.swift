//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The codegen User Entitlement types are conformed to this protocol to reduce duplication of
/// transformation logic
protocol ApiUserEntitlements {
    associatedtype Entitlement: ApiEntitlement
    associatedtype ExpendableEntitlement: ApiEntitlement
    associatedtype AccountStates: ApiAccountStates

    var createdAtEpochMs: Double { get }
    var updatedAtEpochMs: Double { get }
    var version: Double { get }
    var externalId: String { get }
    var owner: String? { get }
    var accountState: AccountStates? { get }
    var entitlementsSetName: String? { get }
    var entitlementsSequenceName: String? { get }
    var entitlements: [Entitlement] { get }
    var expendableEntitlements: [ExpendableEntitlement] { get }
    var transitionsRelativeToEpochMs: Double? { get }
}

protocol ApiAccountStates: RawRepresentable where RawValue == String {}
