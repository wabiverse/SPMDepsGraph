// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SPMDepsGraphABCD",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "SPMLibraryA",
      targets: ["SPMLibraryA"]
    ),
    .library(
      name: "SPMLibraryB",
      targets: ["SPMLibraryB"]
    ),
    .library(
      name: "SPMLibraryC",
      targets: ["SPMLibraryC"]
    ),
    .library(
      name: "SPMLibraryD",
      targets: ["SPMLibraryD"]
    ),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "SPMLibraryA"
    ),
    .target(
      name: "SPMLibraryB"
    ),
    .target(
      name: "SPMLibraryC"
    ),
    .target(
      name: "SPMLibraryD"
    ),
    .testTarget(
      name: "SPMDepsGraphABCDTests",
      dependencies: [
        .target(name: "SPMLibraryA"),
        .target(name: "SPMLibraryB"),
        .target(name: "SPMLibraryC"),
        .target(name: "SPMLibraryD"),
      ],
      swiftSettings: [
        .interoperabilityMode(.Cxx)
      ]
    ),
  ],
  cxxLanguageStandard: .cxx17
)
