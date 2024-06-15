// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "simple-keyframe-animations",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "simple-keyframe-animations",
            targets: ["simple-keyframe-animations"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "simple-keyframe-animations"),
        .testTarget(
            name: "simple-keyframe-animationsTests",
            dependencies: ["simple-keyframe-animations"]),
    ]
)
