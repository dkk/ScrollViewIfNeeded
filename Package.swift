// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "ScrollViewIfNeeded",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ScrollViewIfNeeded",
            targets: ["ScrollViewIfNeeded"]),
    ],
    targets: [
        .target(
            name: "ScrollViewIfNeeded",
            dependencies: []),
    ]
)
