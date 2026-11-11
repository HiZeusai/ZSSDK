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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/ZSSDK_2.1.21_20261111114809.zip",
            checksum: "11834ac7885e1068c234d1552a710c386d320e8752adae36b013c420770027e0"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/ZSCoreKit_2.1.21_20261111114809.zip",
            checksum: "b0eae1429138031092398e4d9d5845a4d31fda967316bd15b7cf0bc722a4f6d8"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/YKIAPStoreKit_2.1.21_20261111114809.zip",
            checksum: "977de93c370fb783acc91781628808ca0a30341be95eeccf595f77b54e1e815c"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/Pay_zeus_2.1.21_20261111114809.zip",
            checksum: "d030305f26ed2c6f2dd6d23f46e2c11178c6eeedd24f97f2ef0499550f9bba69"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/Analytics_Adjust_2.1.21_20261111114809.zip",
            checksum: "9a3c8cb30d4fa4c9a91ff5530c2c0fda6900099e77164f01301b8b3833d0da02"
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
