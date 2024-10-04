// swift-tools-version: 5.8.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dutch",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Dutch",
            targets: ["Dutch"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Dutch"),
        .testTarget(
            name: "DutchTests",
            dependencies: ["Dutch"]
        ),
    ]
)
