// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SPMDepsGraphYZ",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "SPMLibraryY",
      targets: ["SPMLibraryY"]
    ),
    .library(
      name: "SPMLibraryZ",
      targets: ["SPMLibraryZ"]
    ),
  ],
  dependencies: [
    .package(path: "../SPMDepsGraphABCD")
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "SPMLibraryY",
      dependencies: [
        .product(name: "SPMLibraryA", package: "SPMDepsGraphABCD"),
        .product(name: "SPMLibraryB", package: "SPMDepsGraphABCD"),
        .product(name: "SPMLibraryC", package: "SPMDepsGraphABCD"),
        .product(name: "SPMLibraryD", package: "SPMDepsGraphABCD"),
      ]
    ),
    .target(
      name: "SPMLibraryZ",
      dependencies: [
        .target(name: "SPMLibraryY"),
      ]
    ),
    .testTarget(
      name: "SPMDepsGraphYZTests",
      dependencies: [
        .target(name: "SPMLibraryY"),
        .target(name: "SPMLibraryZ"),
      ],
      swiftSettings: [
        .interoperabilityMode(.Cxx)
      ]
    ),
  ],
  cxxLanguageStandard: .cxx17
)
