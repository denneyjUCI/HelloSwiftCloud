// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EdgeApp",
    platforms: [.macOS(.v11)],
    dependencies: [
        .package(url: "https://github.com/AndrewBarba/swift-compute-runtime", .upToNextMajor(from: "3.1.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(name: "EdgeApp",
                          dependencies: [ .product(name: "Compute", package: "swift-compute-runtime")]
                         ),
    ]
)
