// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SwiftyObjC",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "SwiftyObjC", targets: ["SwiftyObjC"])
    ],
    targets: [
        .target(
            name: "SwiftyObjC",
            path: "Sources/SwiftyObjC",
            publicHeadersPath: "include"
        )
    ]
)
