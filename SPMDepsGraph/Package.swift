// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SPMDepsGraph",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "SPMDepsGraph",
      targets: ["SPMDepsGraph"]
    ),
    .executable(
      name: "SPMDepsApp",
      targets: ["SPMDepsApp"]
    ),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/apple/swift-algorithms", from: "1.2.0"),
    .package(path: "../SPMDepsGraphYZ"),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "SPMDepsGraph",
      dependencies: [
        .product(name: "Algorithms", package: "swift-algorithms"),
        .product(name: "SPMLibraryZ", package: "SPMDepsGraphYZ"),
      ],
      swiftSettings: [
        .interoperabilityMode(.Cxx)
      ]
    ),
    .executableTarget(
      name: "SPMDepsApp",
      dependencies: [
        .target(name: "SPMDepsGraph"),
      ],
      swiftSettings: [
        .interoperabilityMode(.Cxx)
      ]
    ),
    .testTarget(
      name: "SPMDepsGraphTests",
      dependencies: [
        .target(name: "SPMDepsGraph"),
      ],
      swiftSettings: [
        .interoperabilityMode(.Cxx)
      ]
    ),
  ],
  cxxLanguageStandard: .cxx17
)
