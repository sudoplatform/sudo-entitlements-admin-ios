//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Entitlements consumption information
public struct UserEntitlementsConsumption {

    /// User's entitlements.
    public let entitlements: UserEntitlements

    /// Entitlement consumption information for each of a user's
    /// entitlements. If there is no entry for an entitlement,
    /// none of the entitlement has been consumed.
    public let consumption: [EntitlementConsumption]

    public init(entitlements: UserEntitlements, consumption: [EntitlementConsumption]) {
        self.entitlements = entitlements
        self.consumption = consumption
    }

}
