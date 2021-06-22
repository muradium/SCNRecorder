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
            targets: ["SCNRecorder"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SCNRecorder",
            dependencies: ["SCNRecorderObjC"],
            path: "Sources",
            exclude: ["Helpers/MulticastDelegate","SCNRecorder.h","SCNRecorder.modulemap"]),
        .target(
            name: "SCNRecorderObjC",
            dependencies: [],
            path: "Sources",
            exclude: ["AudioEngine","Extensions","Helpers/Multithreading","Helpers/AssociatedStorage.swift","Helpers/AudioAdapter.swift","Helpers/Buffer.swift","Helpers/Observable.swift","Helpers/Property.swift","Helpers/Updater.swift","Helpers/Weak.swift","Helpers/WeakCollection.swift","Helpers/MulticastDelegate/SCNRecorderMulticastDelegate.m", "Helpers/MulticastDelegate/SCNRecorderOriginMulticastDelegate.m","MediaSession","Outputs","PixelBuffer","Protocols","Recordable","RecordableLayer","Recorder","SelfRecordable","AudioSettings.swift","VideoRecording.Info.swift","VideoRecording.State.swift","VideoRecording.swift","VideoSettings.Codec.swift","VideoSettings.CompressionProperties.swift","VideoSettings.FileType.swift","VideoSettings.ScalingMode.swift","VideoSettings.swift","SwiftImports.swift"],
            cSettings: [
                .headerSearchPath("")
            ]),
        .testTarget(
            name: "SCNRecorderTests",
            dependencies: ["SCNRecorder"],
            path: "SCNRecorderTests"),
    ]
)
