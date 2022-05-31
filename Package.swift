// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Backtrace",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_10),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "Backtrace",
            targets: ["Backtrace"]),
    ],
    dependencies: [
        .package(url: "https://github.com/microsoft/plcrashreporter.git", from: "1.10.1"),
    ],
    targets: [
        .target(
            name: "Backtrace",
            dependencies: [
                .product(name: "CrashReporter", package: "plcrashreporter")
            ],
            path: "Sources"
        )
    ]
)
