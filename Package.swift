// swift-tools-version: 5.4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackage",
    platforms: [
           .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyPackage",
            targets: ["MyPackage"]),
    ],
    targets: [
        .target(
            name: "MyPackage", resources: [
                .process("Resources/CustomView.xib"),
                .process("Resources/user.png"),
            ]),
        .testTarget(
            name: "MyPackageTests",
            dependencies: ["MyPackage"]
        ),
    ]
)
