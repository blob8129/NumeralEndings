# NumeralEndings

[![Version](https://img.shields.io/cocoapods/v/NumeralEndings.svg?style=flat)](http://cocoapods.org/pods/NumeralEndings)
[![License](https://img.shields.io/cocoapods/l/NumeralEndings.svg?style=flat)](http://cocoapods.org/pods/NumeralEndings)
[![Platform](https://img.shields.io/cocoapods/p/NumeralEndings.svg?style=flat)](http://cocoapods.org/pods/NumeralEndings)

A tiny library helping to correctly modify Russian words depending on the count.

## Features

Library extends integer type to return a correct form of a word.
Russian words a spelled diffently in this cases:
- Quantity ends in 1 - As per position in the sentence.
- Quantity ends in 2,3,4 - Genitive Singular.
- Quantity ends in 5,6,7,8,9,0,11,12 etc. - Genitive Plural


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.



## Installation

NumeralEndings is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NumeralEndings"
```
## Example

```swift

let count: Int

let counted = count.toNumeralEndingString(commonPart: "организаци", oneOf:"я", twoOf: "ии", fiveOf: "ий")
"В нашем каталоге \(count) \(counted)"
// "В нашем каталоге 1 орагнизация"
// "В нашем каталоге 2 орагнизации"
// "В нашем каталоге 100 орагнизаций"

let counted = count.toNumeralEndingString(commonPart: "час", twoOf: "а", fiveOf: "ов")
"Длительность \(count) \(counted)"
// "Длительность 1 час"
// "Длительность 2 часа"
// "Длительность 5 часов"

let counted = count.toNumeralEndingString(oneOf: "день", twoOf: "дня", fiveOf: "дней")
"До конца отпуска \(count) \(counted)"
// До конца отпуска 1 день
// До конца отпуска 2 дня
// До конца отпуска 36 дней

let counted = count.toNumeralEndingString(oneOf: "год", twoOf: "года", fiveOf: "лет")
"До сингулярности \(count) \(counted)"
// До сингулярности 1 год
// До сингулярности 2 года
// До сингулярности 36 лет

```

## Authors

Anton Lagutin, Andrey Volobyev blob8129@gmail.com

## License

NumeralEndings is available under the MIT license. See the LICENSE file for more info.
