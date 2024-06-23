// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "simple-keyframe-animations",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [
        .library(
            name: "simple-keyframe-animations",
            targets: ["simple-keyframe-animations"]
        ),
    ],
    targets: [
        .target(name: "simple-keyframe-animations", path: "Sources/simple-keyframe-animations")
    ]
)
