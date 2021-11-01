//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Set of entitlements current for the user.
public struct EntitlementsSet {

    /// Time at which the entitlements for the user was originally created.
    public let createdAt: Date

    /// Time at which the entitlements for the user were most recently updated.
    public let updatedAt: Date

    /// Version number of the user's entitlements. This is incremented every
    /// time there is a change of entitlements set or explicit entitlements
    /// for this user.
    public let version: Int

    /// Name of the entitlements set specifying this user's entitlements
    /// or the user's subject ID if the user's entitlements are specified
    /// explicitly rather than by entitlements set name.
    public let name: String

    /// Description, if any, of the entitlements set as specified by the entitlements
    /// set administrator or undefined if user's entitlements are specified explicitly
    /// rather than by entitlements set name.
    public let description: String?

    /// The set of entitlements active for the user. This details the limits
    /// of the user's entitlements and does not specify any information regarding
    /// current consumption of those entitlements.
    public let entitlements: [Entitlement]

    public init(createdAt: Date, updatedAt: Date, version: Int, name: String, description: String?, entitlements: [Entitlement]) {
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.version = version
        self.name = name
        self.description = description
        self.entitlements = entitlements
    }

}
