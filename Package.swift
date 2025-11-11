// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZSSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ZSSDK",
            targets: ["ZSSDKWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "ZSSDK",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/ZSSDK.xcframework.zip",
            checksum: ""
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/ZSCoreKit.xcframework.zip",
            checksum: ""
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/YKIAPStoreKit.xcframework.zip",
            checksum: ""
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/Pay_zeus.xcframework.zip",
            checksum: ""
        ),
        .binaryTarget(
            name: "AdjustSdk",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/AdjustSdk.xcframework.zip",
            checksum: ""
        ),
        .binaryTarget(
            name: "AdjustSigSdk",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/AdjustSigSdk.xcframework.zip",
            checksum: ""
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/Analytics_Adjust.xcframework.zip",
            checksum: ""
        ),
        .target(
            name: "ZSSDKWrapper",
            dependencies: [
                "ZSSDK",
                "ZSCoreKit",
                "YKIAPStoreKit",
                "AdjustSdk",
                "AdjustSigSdk",
                "Analytics_Adjust",
                "Pay_zeus"
            ]
        )
    ]
)
