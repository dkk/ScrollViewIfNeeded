# ScrollViewIfNeeded
A SwiftUI ScrollView that only scrolls if the content doesn't fit in the View

## Installation
Requirements iOS 13+

### Swift Package Manager 
1. In Xcode, open your project and navigate to File → Swift Packages → Add Package Dependency.
2. Paste the repository URL (https://github.com/dkk/ScrollViewIfNeeded) and click Next.
3. For Rules, select version.
4. Click Finish.

### Add as dependency to another package
```swift
.package(url: "https://github.com/dkk/WrappingHStack", .upToNextMajor(from: "2.0.0"))
```

### Manual installation

Copy `/Sources/ScrollViewIfNeeded/ScrollViewIfNeeded.swift` into your project

## Usage

Import the WrappingHStack package to your view:
```swift
import ScrollViewIfNeeded
```

use it like you would use `ScrollView`:
```swift
ScrollViewIfNeeded {
    /* your content */
}
```

or configure it the same way you would configure `ScrollView`:
```swift
ScrollViewIfNeeded(.horizontal, showsIndicators: false) {
    /* your content */
}
```

## Contribute
You can contribute to this project by helping me solve any [reported issues or feature requests](https://github.com/dkk/ScrollViewIfNeeded/issues) and creating a pull request.

## Support
If you just want to say thanks, you could [buy me a coffee ☕️](https://www.buymeacoffee.com/kloeck).

## License
ScrollViewIfNeeded is released under the [MIT License](LICENSE).
