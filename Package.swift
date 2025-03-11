// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SudoEntitlementsAdmin",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SudoEntitlementsAdmin",
            targets: ["SudoEntitlementsAdmin"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/sudoplatform/sudo-config-manager-ios", from: "5.0.0"),
        .package(url: "https://github.com/sudoplatform/sudo-logging-ios", from: "2.0.0"),
        .package(url: "https://github.com/aws-amplify/amplify-swift", from: "2.45.4"),
    ],
    targets: [
        .target(
            name: "SudoEntitlementsAdmin",
            dependencies: [
                .product(name: "Amplify", package: "amplify-swift"),
                .product(name: "AWSAPIPlugin", package: "amplify-swift"),
                .product(name: "AWSCognitoAuthPlugin", package: "amplify-swift"),
                .product(name: "AWSPluginsCore", package: "amplify-swift"),
                .product(name: "SudoLogging", package: "sudo-logging-ios"),
                .product(name: "SudoConfigManager", package: "sudo-config-manager-ios"),
            ],
            path: "SudoEntitlementsAdmin/"
        ),
        .testTarget(
            name: "SudoEntitlementsAdminTests",
            dependencies: ["SudoEntitlementsAdmin"],
            path: "SudoEntitlementsAdminTests/"
        ),
    ]
)

