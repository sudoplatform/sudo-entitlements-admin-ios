//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public enum AccountState {
    /// Account is active and can consume entitlements.
    case active

    /// Account is locked and entitlement cannot be consumed.
    case locked
}

/// Entitlements of a user.
public struct UserEntitlements {

    /// Time of initial creation of user entitlements mapping.
    public let createdAt: Date

    /// Time of last updates of user entitlements mapping.
    public let updatedAt: Date

    /// Version number of the user's entitlements. This is incremented every
    /// time there is a change of entitlements set or explicit entitlements
    /// for this user.
    ///
    /// For users entitled by entitlement set, the fractional part of this version
    /// specifies the version of the entitlements set itself. Entitlements set version
    /// is divided by 100000 then added to the user entitlements version.
    ///
    /// This ensures that the version of user entitlements always increases monotonically.
    public let version: Double

    /// External IDP identifier identifying the user.
    public let externalId: String

    /// Sudo Platform owner. This value matches the subject in identity
    /// tokens used to authenticate to Sudo Platform services. Will not
    /// be present if the user has not yet redeemed their identity token
    /// with the entitlements service.
    public let owner: String?

    /// Name of the entitlements set specified for this user. Will be undefined
    /// if entitlements have been specified explicitly or entitlements
    /// sequence is set.
    public let entitlementsSetName: String?

    /// Name of the entitlements sequence specified for this user. Will be
    /// undefined if entitlements have been specified explicitly or entitlements
    /// set is set.
    public let entitlementsSequenceName: String?

    /// Effective entitlements for the user either obtained from the entitlements
    /// set or as specified explicitly for this user.
    public let entitlements: [Entitlement]

    /// Date from when user's transitions should
    /// be calculated. Defaults to current time.
    public let transitionsRelativeTo: Date?

    /// If `locked` the user can no longer consume entitlements. It will be nil
    /// if the user has not redeemed any entitlements.
    public let accountState: AccountState?

    public init(createdAt: Date, updatedAt: Date, version: Double, externalId: String, owner: String?, entitlementsSetName: String?, entitlementsSequenceName: String?, entitlements: [Entitlement], transitionsRelativeTo: Date?, accountState: AccountState?) {
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.version = version
        self.externalId = externalId
        self.owner = owner
        self.entitlementsSetName = entitlementsSetName
        self.entitlementsSequenceName = entitlementsSequenceName
        self.entitlements = entitlements
        self.transitionsRelativeTo = transitionsRelativeTo
        self.accountState = accountState
    }

}
