//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The codegen Entitlements Set types are conformed to this protocol to reduce duplication of
/// transformation logic
protocol ApiEntitlementsSet {
    associatedtype Entitlement: ApiEntitlement

    var createdAtEpochMs: Double { get }
    var updatedAtEpochMs: Double { get }
    var version: Int { get }
    var name: String { get }
    var description: String? { get }
    var entitlements: [Entitlement] { get }
}
