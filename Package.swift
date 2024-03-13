// swift-tools-version: 5.7.1
import PackageDescription

let package = Package(
    name: "content-view",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "ContentView",
            targets: [
                "ContentView"
            ]
        )
    ],
    targets: [
        .target(
            name: "ContentView",
            dependencies: []
        )
    ]
)
