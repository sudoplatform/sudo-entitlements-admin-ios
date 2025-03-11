//
// Copyright © 2021 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Entitled user.
public struct EntitledUser {
    /// External IDP user ID of the entitled user.
    public let externalId: String

    public init(externalId: String) {
        self.externalId = externalId
    }
}
