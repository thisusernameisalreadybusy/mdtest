// swift-tools-version: 5.7.1
import PackageDescription

let package = Package(
    name: "content-view",
    platforms: [
        .iOS("17.0")
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
