// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AladinAcountSPM.git",
    products: [
        .library(
            name: "AladinAcountSPM.git",
            targets: ["AladinAcountSPM.git",
                      "AladinAccountMoudle",
                     ])
    ],
    dependencies: [
        .package(url: "https://github.com/kakao/kakao-ios-sdk", branch: "master"),
        
    ],
    targets: [
        .binaryTarget(
            name: "AladinAccountMoudle",
            path: "AladinAccountMoudle.xcframework"),
    
        .target(
            name: "AladinAcountSPM.git",
            dependencies: ["AladinAccountMoudle",
                           .product(name: "KakaoSDK", package: "kakao-ios-sdk")
                          ]),
        .testTarget(
            name: "AladinAcountSPM.gitTests",
            dependencies: ["AladinAcountSPM.git",
                           "AladinAccountMoudle",
                           .product(name: "KakaoSDK", package: "kakao-ios-sdk")
                          ]),
    ]
)
