// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "iOSDropDown",
    products: [
        .library(name: "iOSDropDown", targets: ["iOSDropDown"]),
    ],
    targets: [
        .target(name: "iOSDropDown", path: "iOSDropDown/Classes"),
    ]
)
