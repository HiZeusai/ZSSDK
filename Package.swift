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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/ZSSDK_2.1.21_20261104204243.zip",
            checksum: "3148c6180ee9145382061afdca130bb8b03ab11859907cb9695feb6aa4034ce7"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/ZSCoreKit_2.1.21_20261104204243.zip",
            checksum: "08daabd4268b16015b122639b62dcaffb24b0cf904ea210277f8edd47944a1cc"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/YKIAPStoreKit_2.1.21_20261104204243.zip",
            checksum: "977de93c370fb783acc91781628808ca0a30341be95eeccf595f77b54e1e815c"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/Pay_zeus_2.1.21_20261104204243.zip",
            checksum: "587fc8e6a84b6925aafe8b38a0a8687bee9c4dd5d17965c2fbc0fe63f01ef324"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.21/Analytics_Adjust_2.1.21_20261104204243.zip",
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
