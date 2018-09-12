# SwiftyObjC

```ObjC
let a = @"hello"; //a is `NSString *const` now
a = @"world"; //produces error

var b = 5; //b is `const int` now
b = 10; //fine

iflet(c, [self getNullableString]) {
    // c is not nil here
}
// c is not available here

ifletwhere(c, [self getNullableString], c.length > 5) {
    // can have additional constraints
}

```

## Requirements

Xcode 8

## Installation

SwiftyObjC is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyObjC'
```

## guard/guard let

They are possible but not implemented because it has two significant flaws:
* I can't ensure else block has return/throw at compile time. Without this I find it too dangerous
* I can't ensure one wrote `else` keyword, so again dangerous.

However, I'm looking forward to implement these, so if you found a way how to trick compiler, feel file a note or PR.

## License

SwiftyObjC is available under the MIT license. See the LICENSE file for more info.
