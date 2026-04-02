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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.11/ZSSDK_2.1.11_20260125110942.zip",
            checksum: "94e963859818c8345a2584f075ccf3386987596540e0c1757d288018b2b7248a"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.11/ZSCoreKit_2.1.11_20260125110942.zip",
            checksum: "a88b840cd604b79b365174c98da25efc76c2d72c0bc4300f9f49235f7c6a8c0f"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.11/YKIAPStoreKit.xcframework.zip",
            checksum: "f4cbebade4061551c574c990dbe462bfc9118bf3ee3df92bbcd7dc3222dbc91a"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.11/Pay_zeus_2.1.11_20260125110942.zip",
            checksum: "cc27911e64dc041b6c0736ca9f80faa16fb3c8238924dab4c539194d4b5745ef"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.11/Analytics_Adjust_2.1.11_20260125111829.zip",
            checksum: "5d052c438e839ae384d38e4f7b9f33405a1633168ea7fd4e023cdd4aab558357"
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
