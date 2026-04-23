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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.14/ZSSDK_2.1.14_20260423234653.zip",
            checksum: "1b58934072c37327ac2b80fa2a2e343ad09b319469145352b57c144a9173834b"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.14/ZSCoreKit_2.1.14_20260423234653.zip",
            checksum: "f35cbde1eea0bb1794c67f1664b347bc8bf2d89a3f4016a09151536cdcc0aad4"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.14/YKIAPStoreKit_2.1.14_20260423234653.zip",
            checksum: "3f4f2f10526245b818e18d6ce026cf3498c94973c33e5b0282a9498b386a4643"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.14/Pay_zeus_2.1.14_20260423234653.zip",
            checksum: "2216b3479a400447cef5adf10892fedd72102c634c9740e4f2745a8fec789f84"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.14/Analytics_Adjust_2.1.14_20260423234653.zip",
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
