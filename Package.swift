// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SCNRecorder",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "SCNRecorder",
            targets: ["SCNRecorder", "SCNRecorderObjC"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SCNRecorder",
            dependencies: ["SCNRecorderObjC"],
            path: "Sources/SCNRecorder",
            exclude: ["Info.plist"]),
        .target(
            name: "SCNRecorderObjC",
            path: "Sources/SCNRecorderObjC"
//            cSettings: [
//                .headerSearchPath("Include"),
//            ]
        ),
        .testTarget(
            name: "SCNRecorderTests",
            dependencies: ["SCNRecorder"],
            exclude: ["Info.plist"]),
    ]
)
