// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Pokemon",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Pokemon",
            targets: ["Pokemon"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Pokemon",
            dependencies: ["Starscream"],
        path: "Sources"),
        .testTarget(
            name: "PokemonTests",
            dependencies: ["Pokemon"]),
    ]
)
