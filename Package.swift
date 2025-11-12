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
        .binaryTarget(
            name: "ZSSDK",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/ZSSDK.xcframework.zip",
            checksum: "ae15e05f6b22f5405f07ebdc3ef65b694edb9a7900cab8299dc4bfb478c84a5b"
        ),
        .binaryTarget(
            name: "ZSCoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/ZSCoreKit.xcframework.zip",
            checksum: "be9c7708546f0eaae6f51925da449d29b6d287dce662cf8ab0730436b8d40f7f"
        ),
        .binaryTarget(
            name: "YKIAPStoreKit",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/YKIAPStoreKit.xcframework.zip",
            checksum: "65b2dc0d750de6306a696bb922720c731e372599b208a604e5f3c35c37ca6d35"
        ),
        .binaryTarget(
            name: "Pay_zeus",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/Pay_zeus.xcframework.zip",
            checksum: "cfb2749b8a012b2a844be78aa0fe1cfcd6cbc89024be5c9f0c9fafeb0f89cac2"
        ),
        .binaryTarget(
            name: "AdjustSdk",
            url: "https://github.com/adjust/adjust_signature_sdk/releases/download/v3.61.0/AdjustSigSdk-iOS-tvOS-Static-3.61.0.xcframework.zip",
            checksum: "ba968458627349f827c66c19cd913b41ffef6aa187f2e8d617660b78a0f648ba"
        ),
        .binaryTarget(
            name: "AdjustSigSdk",
            url: "https://github.com/adjust/ios_sdk/releases/download/v5.4.5/AdjustSdk-iOS-tvOS-Static-5.4.5.xcframework.zip",
            checksum: "77deb65668dd5cc1805df6113dd9827b72d1f663bceaefae6dcbd6c767af0ca5"
        ),
        .binaryTarget(
            name: "Analytics_Adjust",
            url: "https://github.com/HiZeusai/SDKPackage/releases/download/2.1.3/Analytics_Adjust.xcframework.zip",
            checksum: "308d8f6d86db18e14384eb692edd425b19ab18de93f001ba8c0ff673f7d921f3"
        ),
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
