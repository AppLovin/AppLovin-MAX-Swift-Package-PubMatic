// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationPubMaticAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationPubMaticAdapter",
            targets: ["AppLovinMediationPubMaticAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package.git", exact: "5.5.0")
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
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/pubmatic-adapter/AppLovinMediationPubMaticAdapter-5.5.0.0.zip",
            checksum: "40376a61e2cd964e11660e9a9657a06d4be445f02eb1a5abb837a423c01b9738"
        )
    ]
)
