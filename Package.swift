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
        .package(url: "https://github.com/sendbird/sendbird-live-sdk-ios", from: "1.0.0-beta.4"),
        .package(url: "https://github.com/sendbird/sendbird-uikit-ios", from: "3.2.2")
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdLiveUIKit",
            url: "https://github.com/sendbird/sendbird-live-uikit-ios/releases/download/v1.0.0-beta.2/SendbirdLiveUIKit.xcframework.zip",
            checksum: "532ddd2d64e0c8542289795d5019877041223b919fb1eb31734759db7ec23bdf"
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
