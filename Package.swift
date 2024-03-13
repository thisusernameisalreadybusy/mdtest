import PackageDescription

let package = Package(
    name: "content-view",
    platforms: [
        .iOS(.v17)
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
