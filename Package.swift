// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
 
import PackageDescription
 
let package = Package(
    name: "PicUPSDKv3",
    platforms: [ .iOS(.v10) ],
    products: [
        .library(
            name: "PicUPSDKv3",
            targets: ["PicUPSDKv3"]),
    ],
    targets: [
        .binaryTarget(name: "PicUPSDKv3", path: "PicUPSDKv3.xcframework")
    ]
)
