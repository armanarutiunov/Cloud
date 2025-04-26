// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Cloud",
    platforms: [.iOS(.v12), .macOS(.v10_13), .tvOS(.v12), .watchOS(.v4)],
    products: [
        .library(
            name: "Cloud",
            targets: ["Cloud"]),
    ],
    targets: [
        .target(
            name: "Cloud"
        ),
    ]
)
