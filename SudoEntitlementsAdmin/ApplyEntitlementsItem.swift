//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Operation to apply entitlemnets to a user
public struct ApplyEntitlementsItem {

    /// External IDP user ID of user to retrieve entitlements for.
    public let externalId: String

    /// Name of the entitlements set to apply to the user.
    public let entitlements: [Entitlement]

    /// If specified, version of any current entitlements that must be matched
    public let version: Double?

    public init(externalId: String, entitlements: [Entitlement], version: Double? = nil) {
        self.externalId = externalId
        self.entitlements = entitlements
        self.version = version
    }
}
