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
        .package(url: "https://github.com/sendbird/sendbird-live-sdk-ios", from: "1.0.0-beta.3"),
        .package(url: "https://github.com/sendbird/sendbird-uikit-ios", from: "3.2.0")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveUIKit",
            url: "https://github.com/sendbird/sendbird-live-uikit-ios/releases/download/v1.0.0-beta/SendbirdLiveUIKit.xcframework.zip",
            checksum: "4e7761e1db10d4b496ab8e5ac8a0fd193e0c12dc4a15bcbd779697409671bff5"
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
