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
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/ZSSDK.xcframework.zip",
            checksum: "8c4955d519867d49774e90d018ef984f55aedcd01e57e0fabfa13e9bbfce8a2e"
        ),

        // 核心工具库
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/ZSCoreKit.xcframework.zip",
            checksum: "be9c7708546f0eaae6f51925da449d29b6d287dce662cf8ab0730436b8d40f7f"
        ),

        // IAP 支付模块
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/YKIAPStoreKit.xcframework.zip",
            checksum: "65b2dc0d750de6306a696bb922720c731e372599b208a604e5f3c35c37ca6d35"
        ),

        // Zeus 支付
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/Pay_zeus.xcframework.zip",
            checksum: "cfb2749b8a012b2a844be78aa0fe1cfcd6cbc89024be5c9f0c9fafeb0f89cac2"
        ),

        // Adjust SDK
        .binaryTarget(
            name: "AdjustSdk",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/AdjustSdk.xcframework.zip",
            checksum: "7cfb5f2e2591ad8cc8e9229e3db6706e408be7df62d83bc914867e851c4dd6f3"
        ),

        // Adjust Signature 支持
        .binaryTarget(
            name: "AdjustSigSdk",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/AdjustSigSdk.xcframework.zip",
            checksum: "6e6159542a47585129a715777709259574c1e45e69bc20e91b23952b43095f8e"
        ),

        // Adjust 数据分析扩展
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/Analytics_Adjust.xcframework.zip",
            checksum: "308d8f6d86db18e14384eb692edd425b19ab18de93f001ba8c0ff673f7d921f3"
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
