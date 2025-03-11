//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Entitlement consumption information.
public struct EntitlementConsumption {

    /// Name of the entitlement.
    public let name: String

    /// Value of the entitlement.
    public let value: Int64

    /// Remaining amount of entitlement.
    public let available: Int64

    /// Consumed amount of entitlement.
    public let consumed: Int64

    /// The time at which this entitlement was first consumed.
    public let firstConsumedAt: Date?

    /// The most recent time at which this entitlement was consumed.
    public let lastConsumedAt: Date?

    public init(name: String, value: Int64, available: Int64, consumed: Int64, firstConsumedAt: Date?, lastConsumedAt: Date?) {
        self.name = name
        self.value = value
        self.available = available
        self.consumed = consumed
        self.firstConsumedAt = firstConsumedAt
        self.lastConsumedAt = lastConsumedAt
    }

}
