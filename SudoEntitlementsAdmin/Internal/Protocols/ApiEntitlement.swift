//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The codegen Entitlement types are conformed to this protocol to reduce duplication of
/// transformation logic
protocol ApiEntitlement {
    var name: String { get }
    var description: String? { get }
    var value: Double { get }
}
