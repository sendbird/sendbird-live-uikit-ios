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
            url: "https://github.com/sendbird/sendbird-live-uikit-ios/releases/download/v1.0.0-beta.3/SendbirdLiveUIKit.xcframework.zip",
            checksum: "d99ff51652617feadf7bf691c2a4439b0bccde844cf6ba1e4bdad951788e993a"
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
