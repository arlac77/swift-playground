// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-playground",
    dependencies: [
        .package(url: "https://github.com/apple/swift-system", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "swift-playground",
            dependencies: [
            .product(name: "SystemPackage", package: "swift-system"),
        ]),
        .testTarget(
            name: "swift-playgroundTests",
            dependencies: ["swift-playground"]),
    ]
)
