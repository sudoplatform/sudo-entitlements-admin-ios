//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import AWSAppSync
import AWSCore

/// `AWSAppSyncServiceConfigProvider` implementation that converts Sudo platform
/// configuration to AWS AppSync configuration.
public struct SudoEntitlementsAdminClientConfigProvider: AWSAppSyncServiceConfigProvider {

    public struct Config {
        // AWS region hosting Admin API.
        static let region = "region"
        // API URL.
        static let apiUrl = "apiUrl"
    }

    public let clientDatabasePrefix: String? = nil

    public let endpoint: URL

    public let region: AWSRegionType

    public let authType: AWSAppSyncAuthType = .apiKey

    public let apiKey: String?

    /// Initializes `SudoEntitlementsAdminClientConfigProvider` with the API endpoint URL
    /// and AWS region type.
    ///
    /// - Parameters:
    ///   - endpoint: URL for Admin  API endpoint.
    ///   - region: AWS region.
    ///   - apiKey: API key used to authenticate to the Admin API endpoint.
    public init(endpoint: URL, region: AWSRegionType, apiKey: String) {
        self.endpoint = endpoint
        self.region = region
        self.apiKey = apiKey
    }

    /// Initializes `SudoEntitlementsAdminClientConfigProvider` with the API endpoint URL
    /// and AWS region type.
    ///
    /// - Parameter config: Configuration parameters for Admin API endpoint.
    /// - Parameter apiKey: API key used to authenticate to the Admin API endpoint.
    public init?(config: [String: Any], apiKey: String) {
        guard let apiUrl = config[Config.apiUrl] as? String,
            let endpoint = URL(string: apiUrl),
            let region = config[Config.region] as? String else {
                return nil
        }

        guard let regionType = AWSEndpoint.regionTypeFrom(name: region) else {
            return nil
        }

        self.init(endpoint: endpoint, region: regionType, apiKey: apiKey)
    }

}
