// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Mentors",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Mentors",
            targets: ["AppModule"],
            bundleIdentifier: "pos.academy.Mentors",
            teamIdentifier: "78W7B5CV94",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .carrot),
            accentColor: .presetColor(.yellow),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/exyte/PopupView.git", "2.0.0"..<"3.0.0")
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "PopupView", package: "popupview")
            ],
            path: ".",
            resources: [
                .process("Resources")
            ]
        )
    ]
)