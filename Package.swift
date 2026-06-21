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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/ZSSDK_2.1.20_20260621205313.zip",
            checksum: "c0753264ddd1576016659b9cc91a556bdb3ba569aae648e7d5fa1001f8a5d631"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/ZSCoreKit_2.1.20_20260621205313.zip",
            checksum: "9255c90778f070f2d8d65b7db22925fe074ba500147fc4603d8fe8cfad653755"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/YKIAPStoreKit_2.1.20_20260621205313.zip",
            checksum: "17f969ab120af819d974b810d375687e0b0613e1da1839fab41718bdc44afbb4"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/Pay_zeus_2.1.20_20260621205313.zip",
            checksum: "253ed9e802a5f2aacb29201be9d08062d53146e31a9c2d76123d8c9e5c0f94af"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/Analytics_Adjust_2.1.20_20260621205313.zip",
            checksum: "b81af4c0862d1c70a7d695b2157623f8e37025acc67c7701446bb1c5e496c659"
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
