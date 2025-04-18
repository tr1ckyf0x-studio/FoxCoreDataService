// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FoxCoreDataService",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "FoxCoreDataService",
            targets: ["FoxCoreDataService"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.0.0")
    ],
    targets: [
        .target(
            name: "FoxCoreDataService",
            dependencies: ["Core", "Helpers", "Protocols"],
            path: "Sources/FoxCoreDataService/FoxCoreDataService"
        ),
        .target(
            name: "Core",
            dependencies: [
                .product(name: "CocoaLumberjackSwift", package: "CocoaLumberjack")
            ],
            path: "Sources/FoxCoreDataService/Core",
            swiftSettings: [
                .define("SPM")
            ]
        ),
        .target(
            name: "Helpers",
            path: "Sources/FoxCoreDataService/Helpers",
            swiftSettings: [
                .define("SPM")
            ]
        ),
        .target(
            name: "Protocols",
            path: "Sources/FoxCoreDataService/Protocols",
            swiftSettings: [
                .define("SPM")
            ]
        )
    ]
)
