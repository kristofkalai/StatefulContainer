# StatefulContainer
Use the magic of View inside any non-View! 🪄

## Setup

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/stateman92/StatefulContainer", exact: .init(0, 0, 1))
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

## Usage

```swift
StatefulContainer(value: true) {
    Toggle(isOn: $0) {
        Text("Toggle")
    }
}
```

For details see the Example app.
