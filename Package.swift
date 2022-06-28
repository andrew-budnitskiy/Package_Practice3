// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Practice3Package",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Practice3Package",
            targets: ["Practice3Package"]),
    ],
    dependencies: [

        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.1")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Practice3Package",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "Practice3PackageTests",
            dependencies: ["Practice3Package"]),
    ]
)
