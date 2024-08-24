// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GRDBQuery",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GRDBQuery",
            targets: ["GRDBQuery"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GRDBQuery",
        .testTarget(
            name: "GRDBQueryTests",
    ]
)

for target in package.targets {
    var settings = target.swiftSettings ?? []
    settings.append(contentsOf: [
        // <https://github.com/apple/swift-evolution/blob/main/proposals/0337-support-incremental-migration-to-concurrency-checking.md>
        .enableExperimentalFeature("StrictConcurrency"),
        // <https://github.com/apple/swift-evolution/blob/main/proposals/0354-regex-literals.md>
        .enableUpcomingFeature("BareSlashRegexLiterals"),
        // <https://github.com/apple/swift-evolution/blob/main/proposals/0401-remove-property-wrapper-isolation.md>
        .enableUpcomingFeature("DisableOutwardActorInference"),
    ])
    target.swiftSettings = settings
}
