// swift-tools-version: 5.7.1
import PackageDescription

let package = Package(
    name: "content-view",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ContentView",
            targets: [
                "ContentView"
            ]
        )
    ],
    dependencies: [
        .package(name: "content-view", path: ".")
    ],
    targets: [
        .target(
            name: "ContentView",
            dependencies: []
        )
    ]
)
