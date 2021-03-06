// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "VaporDemo",
  platforms: [.macOS(.v12)],
  
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "4.55.0"),
  ],
  targets: [
    .executableTarget(name: "Run",
      dependencies: [
        .target(name: "App"),
      ]    
    ),
    .target(name: "App",
      dependencies: [
        .product(name: "Vapor", package: "vapor"),  
      ]
    ),
    .testTarget(name: "AppTests", 
      dependencies: [
        .target(name: "App"),
        .product(name: "XCTVapor", package: "vapor"),
      ])
  ]
)
