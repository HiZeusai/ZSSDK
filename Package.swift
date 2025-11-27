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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.8/ZSSDK_2.1.8_20251127180406.zip",
            checksum: "c5ddd14c1863e901d725ef0fe4ade494c0a1829ad1eff9fc62c321620107c17a"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.8/ZSCoreKit_2.1.8_20251127180406.zip",
            checksum: "c444f20f34ac14b46666b51012defdf81dbc39fc31ec6a3dce7d7cd5219a7782"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.8/YKIAPStoreKit_2.1.8_20251127180406.zip",
            checksum: "f370d1d7b81e6e175b27deb8df65446305d61215d502d5b772762f412ef48088"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.8/Pay_zeus_2.1.8_20251127180406.zip",
            checksum: "af0c294e413a4a1a4d17c1e03f22bbac56dcd19ccdbb36c9218da2a398ea01da"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.8/Analytics_Adjust_2.1.8.zip",
            checksum: "37ff1ac4e43d92412c1460e34c8d8ad65b57d66100fd80fa30df5e6b625fcfb3"
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
