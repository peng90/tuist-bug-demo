import ProjectDescription
import ProjectDescriptionHelpers

let target = Target(name: "SomeTarget",
                    platform: .iOS,
                    product: .framework,
                    bundleId: "com.some.target",
                    infoPlist: .default,
                    dependencies: [
                        .package(product: "ComposableArchitecture")
                    ])

let project = Project(name: "Packages",
                      packages: [
                          .package(url: "https://github.com/pointfreeco/swift-composable-architecture", .exact("0.17.0"))
                      ],
                      targets: [target])
