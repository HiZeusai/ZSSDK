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
            checksum: "3bc58dec58172081820bbf081b6e2ed85fe6713e03dc4cfb9a1ed3db2de2cc83"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/ZSCoreKit_2.1.20_20260621205313.zip",
            checksum: "6e0e4cd46c747fe5a28560e513b9f7b9a48f26f6158f1f07a49e2e7431cff94a"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/YKIAPStoreKit_2.1.20_20260621205313.zip",
            checksum: "6cf2f5d6123c2e1ccde9fccb9321103feeccd73e79b1348467616a8d0126d9b8"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/Pay_zeus_2.1.20_20260621205313.zip",
            checksum: "57f8892e4bfc56c7b4ab8d0c18d9ae67154064ec66c71875d8b105974c332f71"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.20/Analytics_Adjust_2.1.20_20260621205313.zip",
            checksum: "8578a3787a65f5cab55f241434fb375a93dbe8052f9ade69e34ebb9391624833"
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
