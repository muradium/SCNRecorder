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
            path: "Sources/SCNRecorder",
            exclude: ["Info.plist"],
            publicHeadersPath: "Sources/SCNRecorderObjC/Helpers/MulticastDelegate"),
        .target(
            name: "SCNRecorderObjC",
            path: "Sources/SCNRecorderObjC",
            cSettings: [
                .headerSearchPath("Helpers"),
            ]),
        .testTarget(
            name: "SCNRecorderTests",
            dependencies: ["SCNRecorder"],
            exclude: ["Info.plist"]),
    ]
)
