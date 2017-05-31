# NumeralEndings

[![CI Status](http://img.shields.io/travis/blob8129@gmail.com/NumeralEndings.svg?style=flat)](https://travis-ci.org/blob8129@gmail.com/NumeralEndings)
[![Version](https://img.shields.io/cocoapods/v/NumeralEndings.svg?style=flat)](http://cocoapods.org/pods/NumeralEndings)
[![License](https://img.shields.io/cocoapods/l/NumeralEndings.svg?style=flat)](http://cocoapods.org/pods/NumeralEndings)
[![Platform](https://img.shields.io/cocoapods/p/NumeralEndings.svg?style=flat)](http://cocoapods.org/pods/NumeralEndings)

# Numeral Endings

Russian words a spelled diffently in this cases:
- Quantity ends in 1 - As per position in the sentence.
- Quantity ends in 2,3,4 - Genitive Singular.
- Quantity ends in 5,6,7,8,9,0,11,12 etc.  - Genitive Plural
Library extends integer type to return a correct form of a word.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

NumeralEndings is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NumeralEndings"
```
## Example

```swift

let counted = count.toNumeralEndingString(first: "организация", second: "организации", third: "организаций")
"В нашем каталоге \(count) \(counted)"
// "В нашем каталоге 1 орагнизация"
// "В нашем каталоге 2 орагнизации"
// "В нашем каталоге 100 орагнизаций"

let counted = count.toNumeralEndingString(first: "день", second: "дня", third: "дней")
"До конца отпуска \(count) \(counted)"
// До конца отпуска 1 день
// До конца отпуска 20 дня
// До конца отпуска 36 дней

```

## Author

blob8129@gmail.com, bloba8129@gmail.com

## License

NumeralEndings is available under the MIT license. See the LICENSE file for more info.
