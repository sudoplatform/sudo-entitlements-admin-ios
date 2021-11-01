//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Definition of a single transition within an entitlements sequence
public struct EntitlementsSequenceTransition {

    /// Name of entitlements set.
    public let entitlementsSetName: String

    /// ISO8601 period string - if not specified then this transition
    /// is the final state for all users on the sequence.
    public let duration: String?

    public init(entitlementsSetName: String, duration: String?) {
        self.entitlementsSetName = entitlementsSetName
        self.duration = duration
    }

}

/// Definition of a sequence of entitlements sets through which a user will transition.
public struct EntitlementsSequence {

    /// Time at which the entitlements sequence was originally created.
    public let createdAt: Date

    /// Time at which the entitlements sequence was most recently updated.
    public let updatedAt: Date

    /// Version number of the entitlements sequence. This is incremented every
    /// time there is a change to this entitlements sequence.
    public let version: Int

    /// Name of this entitlements sequence.
    public let name: String

    /// Description, if any, of the entitlements sequence as specified by the entitlements
    /// administrator.
    public let description: String?

    /// The sequence of transitions a user will go through in order.
    public let transitions: [EntitlementsSequenceTransition]

    public init(createdAt: Date, updatedAt: Date, version: Int, name: String, description: String?, transitions: [EntitlementsSequenceTransition]) {
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.version = version
        self.name = name
        self.description = description
        self.transitions = transitions
    }

}
