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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.18/ZSSDK_2.1.18_20260611062918.zip",
            checksum: "d25dcd752a9b0f1bf061513a7979e68a1ca1cace913c14b83d34e8d3c41a9427"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.18/ZSCoreKit_2.1.18_20260611062918.zip",
            checksum: "e01798788b0abfaad92c27d58548a13bba2c40f66ae1e14e7c29916b7d79cd8c"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.18/YKIAPStoreKit_2.1.18_20260611062918.zip",
            checksum: "17f969ab120af819d974b810d375687e0b0613e1da1839fab41718bdc44afbb4"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.18/Pay_zeus_2.1.18_20260611062918.zip",
            checksum: "d4f257d988310416b788878edb7f8b969dc0d5de43109db595bfaee11dec58ca"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.18/Analytics_Adjust_2.1.18_20260611062918.zip",
            checksum: "d97f04ded00654a11fe8a25962762311907cb958af726cd536b3e7718b60aaea"
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
