//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Representation of an entitlement.
public struct Entitlement {
    /// Name of the entitlement.
    public let name: String

    /// Description, if any, of the entitlement.
    public let description: String?

    /// Value of the entitlement.
    public let value: Int64

    public init(name: String, description: String? = nil, value: Int64) {
        self.name = name
        self.value = value
        self.description = description
    }
}
