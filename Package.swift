// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "ZSSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ZSSDK",
            targets: ["ZSSDKWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/adjust/ios_sdk.git", from: "5.4.5"),
        .package(url: "https://github.com/adjust/adjust_signature_sdk.git", from: "3.61.0")
    ],
    targets: [
        .binaryTarget(
            name: "ZSSDK",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.9/ZSSDK_2.1.9_20260107115926.zip",
            checksum: "2536fd1e287452bbcbea8273f3cbce394848c6a870f3e3c04b754d47b80567b8"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.9/ZSCoreKit_2.1.9_20260107115926.zip",
            checksum: "7727e1e1fbe57fa3ab1f858fb518092ee210d2e67fdb1cad4d64c8afd722165e"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.9/YKIAPStoreKit_2.1.9_20260107115926.zip",
            checksum: "b1c020b950f05e722ddfae59cc8c0ac34ffc7369f6905d9c03b7a4f01ac2dd60"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.9/Pay_zeus_2.1.9_20260107115926.zip",
            checksum: "a5395dffe15b410b8acbaec685d922ea6ed2f82b4eb4bf83b0eed3ab627ed31d"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.9/Analytics_Adjust_2.1.9.zip",
            checksum: "09adf5492efcf1fc71f24c6454da419dcc2541d3e980a12174ac7ab2c116db68"
        ),
        .target(
            name: "ZSSDKWrapper",
            dependencies: [
                "ZSSDK",
                "ZSCoreKit",
                "YKIAPStoreKit",
                "Pay_zeus",
                "Analytics_Adjust",
                .product(name: "AdjustSdk", package: "ios_sdk"),
                .product(name: "AdjustSignature", package: "adjust_signature_sdk")
            ],
            path: "Sources"
        )
    ]
)
