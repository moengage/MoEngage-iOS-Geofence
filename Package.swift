// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoEngageGeofence",
    products: [
        .library(
            name: "MoEngageGeofence",
            targets: ["MoEngageGeofenceSPM","MoEngageGeofence"]),
    ],
    dependencies: [
        .package(name: "MoEngage-iOS-SDK",url: "https://github.com/moengage/MoEngage-iOS-SDK.git", from: "8.4.0"),
    ],
    targets: [
        .target(name: "MoEngageGeofenceSPM", dependencies: ["MoEngage-iOS-SDK"], path: "Sources/..",exclude: ["MoEngageGeofence.podspec", "README.md","./Frameworks/MoEngageGeofence.xcframework", "LICENSE","CHANGELOG.md","Images/moe_logo_blue.png"]),
        .binaryTarget(name: "MoEngageGeofence",path: "./Frameworks/MoEngageGeofence.xcframework")
    ]
)
