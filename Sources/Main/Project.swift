import ProjectDescription

let project = Project(
    name: "Main",
    packages: [
        .package(path: "../../")
    ],
    targets: [
        .target(
            name: "Main",
            destinations: [
                .iPhone
            ],
            product: .app,
            productName: "Notes",
            bundleId: "com.thisusernameisalreadybusy.main",
            sources: ["Sources/**"],
            dependencies: [
                .package(product: "ContentView")
            ]
        ),
        .target(
            name: "MainTests",
            destinations: [
                .iPhone
            ],
            product: .uiTests,
            productName: "NotesTests",
            bundleId: "com.thisusernameisalreadybusy.main-tests",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "Main")
            ]
        )
    ]
)
