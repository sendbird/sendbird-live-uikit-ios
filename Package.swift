// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SendbirdLiveUIKit",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SendbirdLiveUIKit",
            targets: ["SendbirdLiveUIKitTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sendbird/sendbird-live-sdk-ios", from: "1.0.0-beta.8"),
        .package(url: "https://github.com/sendbird/sendbird-uikit-ios", from: "3.5.2")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveUIKit",
            url: "https://github.com/sendbird/sendbird-live-uikit-ios/releases/download/v1.0.0-beta.5/SendbirdLiveUIKit.xcframework.zip",
            checksum: "c803d5ab8f67b5958968f74d88d4c8c40c60d7173067cfe7d0a4be44ffa15f87"
        ),
        .target(name: "SendbirdLiveUIKitTarget",
                dependencies: [
                    .target(name: "SendbirdLiveUIKit"),
                    .product(name: "SendbirdLiveSDK", package: "sendbird-live-sdk-ios"),
                    .product(name: "SendbirdUIKit", package: "sendbird-uikit-ios")
                ],
                path: "Sources"),
    ]
)
