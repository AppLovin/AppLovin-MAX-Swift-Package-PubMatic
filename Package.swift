// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationPubMaticAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AppLovinMediationPubMaticAdapter",
            targets: ["AppLovinMediationPubMaticAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package.git", exact: "5.1.1")
    ],
    targets: [
        .target(
            name: "AppLovinMediationPubMaticAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationPubMaticAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "OpenWrapSDK", package: "OpenWrapSDK-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationPubMaticAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/pubmatic-adapter/AppLovinMediationPubMaticAdapter-5.1.1.0.zip",
            checksum: "c722f785f79eee5c133fc14785865e274a549cb8dad90e8b3df474e650b8a07b"
        )
    ]
)
