import ProjectDescription

let project = Project(
    name: "Main",
    packages: [
        .package(path: "../ContentView")
    ],
    targets: [
        .target(
            name: "Main",
            destinations: .iPhone,
            product: .app,
            productName: "Notes",
            bundleId: "com.thisusernameisalreadybusy.main",
            sources: ["Sources/**"],
            dependencies: [
                .package(product: "ContentView")
            ]
        )
    ]
)