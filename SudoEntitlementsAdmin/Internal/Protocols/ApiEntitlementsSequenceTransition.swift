//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// The codegen Entitlement Sequence Transition types are conformed to this protocol to reduce duplication of
/// transformation logic
protocol ApiEntitlementsSequenceTransition {
    var entitlementsSetName: String { get }
    var duration: String? { get }
}
