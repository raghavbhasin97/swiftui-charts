// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SpaceNationCharts",
    platforms: [
        .iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(name: "SpaceNationCharts", targets: ["SpaceNationCharts"])
    ],
    dependencies: [
        .package(name: "Shapes", url: "https://github.com/spacenation/swiftui-shapes.git", .upToNextMajor(from: "1.1.0"))
    ],
    targets: [
        .target(name: "SpaceNationCharts",dependencies: ["Shapes"])
    ]
)
