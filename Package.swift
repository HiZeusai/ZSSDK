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
    targets: [
        // 核心 SDK
        .binaryTarget(
            name: "ZSSDK",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/ZSSDK.xcframework.zip",
            checksum: "158e74bf420c610218bb49ab66db0f3f4e0ca1e21198b71d691529aa531fa38d"
        ),

        // 核心工具库
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/ZSCoreKit.xcframework.zip",
            checksum: "270877303b5d07f00a73b8c804ce4606ac80adbb5cf9b4dbdb76232f1c5ea2b7"
        ),

        // IAP 支付模块
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/YKIAPStoreKit.xcframework.zip",
            checksum: "4258fd4dd898c6e1f216e77b34e2d3ffcc8073931663b49e7cdc30c95683a1b6"
        ),

        // Zeus 支付
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/Pay_zeus.xcframework.zip",
            checksum: "1ab53beeb86e7790bb2de8fe7920e76ffd85ee8769eeb474467907b20ffd69f7"
        ),

        // Adjust SDK
        .binaryTarget(
            name: "AdjustSdk",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/AdjustSdk.xcframework.zip",
            checksum: "f255f1c045b2371bb4ae9739ca60cf1163407e7be32d88eb141ccb3910b55ca5"
        ),

        // Adjust Signature 支持
        .binaryTarget(
            name: "AdjustSigSdk",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/AdjustSigSdk.xcframework.zip",
            checksum: "85e96e34ed8d42831d3f516cf0c3b5249587d02f769e696ef8cbe2bcf66767ab"
        ),

        // Adjust 数据分析扩展
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.1/Analytics_Adjust.xcframework.zip",
            checksum: "a63b3034fc524b0257dd46583e4a94adf544192dcd15444f41372fb0f18f823f"
        ),

        // Wrapper 目标
        .target(
            name: "ZSSDKWrapper",
            dependencies: [
                "ZSSDK",
                "ZSCoreKit",
                "YKIAPStoreKit",
                "Pay_zeus",
                "AdjustSdk",
                "AdjustSigSdk",
                "Analytics_Adjust"
            ],
            path: "Sources"
        )
    ]
)
