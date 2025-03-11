//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// Generic Type to wrap list result.
public struct ListOutput<T> {

    // MARK: - Properties

    /// Items returned by a List query output.
    public let items: [T]

    /// Next token to call next page of paginated results.
    public let nextToken: String?

    /// Returns an empty ListOutput.
    static var empty: Self {
        return Self.init(items: [])
    }

    // MARK: - Lifecycle

    /// Initialize an instance of ListOutput.
    public init(items: [T], nextToken: String? = nil) {
        self.items = items
        self.nextToken = nextToken
    }
}
