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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.16/ZSSDK_2.1.16_20260530225313.zip",
            checksum: "58d100e56215b16c7242b9161dd7949d6fddd1cd8050e9d446c6f6ca103b2965"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.16/ZSCoreKit_2.1.16_20260530225313.zip",
            checksum: "f40469ac211009b99746e624deb464c808e775ed1f65dbdd905f668ff980c152"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.16/YKIAPStoreKit_2.1.16_20260530225313.zip",
            checksum: "45ee1b6aab54f19c0ba15bed6aba7f2447171622476c471933f3887dfe9076e9"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.16/Pay_zeus_2.1.16_20260530225313.zip",
            checksum: "bfc2aa1b2017ca9cb2a4a768fe7f2f10d857232e51a6400e9de8439d1189194c"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.16/Analytics_Adjust_2.1.16_20260530225313.zip",
            checksum: "9f55f7c97295bc0028ab37ab655da5d89d77b6d6cdea837a77b5781f61b584df"
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
