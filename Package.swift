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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.15/ZSSDK_2.1.15_20260515224246.zip",
            checksum: "ca3026744e5017590c677a1adf2206d4acf30e7cf8a7c7c315394a795410ec82"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.15/ZSCoreKit_2.1.15_20260515224246.zip",
            checksum: "044dd22d9bbfa6207679626fa4cf95ed30d7d8415dadf8b7bf5a4d5b21bd8333"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.15/YKIAPStoreKit_2.1.15_20260515224246.zip",
            checksum: "3f4f2f10526245b818e18d6ce026cf3498c94973c33e5b0282a9498b386a4643"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.15/Pay_zeus_2.1.15_20260515224246.zip",
            checksum: "1d40226f6a629ff8f60e4c28f8921bb7c681bc625486a6ec911469ea16dfe629"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.15/Analytics_Adjust_2.1.15_20260515224246.zip",
            checksum: "871af920f64eb890abc3cec3be35d242b675741b13d9e81d7d476821831084af"
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
