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

    public init(externalId: String, entitlementsSequenceName: String) {
        self.externalId = externalId
        self.entitlementsSequenceName = entitlementsSequenceName
    }
}
