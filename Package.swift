// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "curldescription",
    platforms: [
        .iOS(.v13)
    ],
    products: [
     .library(name: "CurlDescriptionDynamic", type: .dynamic, targets: ["CurlDescription"]),
     .library(name: "CurlDescriptionStatic", type: .static, targets: ["CurlDescription"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CurlDescription",
            dependencies: [],
            path: "sources"
        ),
        .testTarget(
            name: "CurlDescriptionTests",
            dependencies: ["CurlDescription"],
            path: "tests"
        )
    ]
)
