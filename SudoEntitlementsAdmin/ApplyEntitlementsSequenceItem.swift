//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Operation to apply an entitlemnets sequence to a user
public struct ApplyEntitlementsSequenceItem {

    /// External IDP user ID of user to retrieve entitlements for.
    public let externalId: String

    /// Name of the entitlements sequence to apply to the user.
    public let entitlementsSequenceName: String

    /// Time in milliseconds since epoch from when transition times should be calculated
    public let transitionsRelativeToEpochMs: Double?

    /// if specified, version of any current entitlements that must be matched
    public let version: Double?

    public init(
        externalId: String,
        entitlementsSequenceName: String,
        transitionsRelativeToEpochMs: Double? = nil,
        version: Double? = nil
    ) {
        self.externalId = externalId
        self.entitlementsSequenceName = entitlementsSequenceName
        self.transitionsRelativeToEpochMs = transitionsRelativeToEpochMs
        self.version = version
    }
}
