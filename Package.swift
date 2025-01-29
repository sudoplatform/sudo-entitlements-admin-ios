// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SudoEntitlementsAdmin",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SudoEntitlementsAdmin",
            targets: ["SudoEntitlementsAdmin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sudoplatform/sudo-config-manager-ios", from: "4.0.0"),
        .package(url: "https://github.com/sudoplatform/sudo-logging-ios", from: "2.0.0"),
        .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm", exact: "2.36.7"),
        .package(url: "https://github.com/sudoplatform/aws-mobile-appsync-sdk-ios.git", exact: "3.7.2"),
    ],
    targets: [
        .target(
            name: "SudoEntitlementsAdmin",
            dependencies: [
                .product(name: "AWSAppSync", package: "aws-mobile-appsync-sdk-ios"),
                .product(name: "AWSCore", package: "aws-sdk-ios-spm"),
                .product(name: "SudoLogging", package: "sudo-logging-ios"),
                .product(name: "SudoConfigManager", package: "sudo-config-manager-ios"),
            ],
            path: "SudoEntitlementsAdmin/"),
        .testTarget(
            name: "SudoEntitlementsAdminTests",
            dependencies: ["SudoEntitlementsAdmin"],
            path: "SudoEntitlementsAdminTests/"
        ),
    ]
)

