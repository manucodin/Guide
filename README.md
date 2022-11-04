# Guide
[![SPM](https://img.shields.io/badge/Swift%20Package%20Manager-Compatible-green?style=flat-square)](https://img.shields.io/badge/Swift%20Package%20Manager-Compatible-green?style=flat-square) [![iOS](https://img.shields.io/badge/Platform-iOS-blue?style=flat-square)](https://img.shields.io/badge/Platform-iOS-blue?style=flat-square)

Guide is a easy and powerful library for opening locations or routes in the most popular iOS navigation apps
## Current Apps Supported
- Google Maps
- Apple Maps
## Installation
### Swift Package Manager
The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding Alamofire as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.
```swift
dependencies: [
    .package(url: "https://github.com/manucodin/Guide.git", .upToNextMajor(from: "0.1.0"))
]
```
## Quick Start
**Check if an app is currently installed**
```swift
Guide.isInstalled(.googleMaps)
```
**Launch a specific app with a route**
```swift
let route = MapRoute(
	origin: MapLocation(latitude: 41.380775, longitude: 2.173661),
	destiny: MapLocation(latitude: 40.4167278, longitude: -3.7033387)
)
Guide.launch(.googleMaps, route: route)
```
Parameter ```origin``` is optional. If this parameter is not used, the destiny app (Google Maps, Apple Maps, etc...) will take the user location

**Present picker with available options**
```swift
let route = MapRoute(
	origin: MapLocation(latitude: 41.380775, longitude: 2.173661),
	destiny: MapLocation(latitude: 40.4167278, longitude: -3.7033387)
)

let alertConfiguration = AlertConfiguration(
	title: "My title", 
	message: "message", 
	currentViewController: self
)

Guide.openAppSelector(route: route, alertConfiguration: alertConfiguration)
```
## Contribute
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create pull request
## Who made this?
- Manu Rodriguez ([@manu_coding](https://twitter.com/manu_coding))
