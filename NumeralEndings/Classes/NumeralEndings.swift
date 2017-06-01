import Foundation

/// Common1ending2ending5ending
//  1word2word5word
public typealias NumeralEndingVisualFormat = String

private enum NumeralEnding: CustomStringConvertible {
    
    case first
    case second
    case third
    
    public var description: String {
        switch self {
        case .first:
            return "First"
        case .second:
            return "Second"
        case .third:
            return "Third"
        }
    }
}


extension Int {
    
    private var numeralEnding: NumeralEnding {
        let mod10 = self % 10;
        let mod100 = self % 100;
        
        if (mod10 == 1 && mod100 != 11) {
            return .first;
        }
        
        if ((mod10 == 2 && mod100 != 12)
            || (mod10 == 3 && mod100 != 13)
            || (mod10 == 4 && mod100 != 14)) {
            return .second;
        }
        
        return .third;
    }
    
    public func toNumeralEndingString(commonPart common: String = "",
                                      oneOf: String = "",
                                      twoOf: String = "",
                                      fiveOf: String = "") -> String {
        let ending: String
        switch self.numeralEnding {
        case .first:
            ending = oneOf
        case .second:
            ending = twoOf
        case .third:
            ending = fiveOf
        }
        return "\(common)\(ending)"
    }
    
    public func toNumeralEndingString(format: NumeralEndingVisualFormat) -> String {
        
        let pattern = "([а-яА-Я]+)?(\\d+)([а-яА-я]+)"
        
        let regEx = try? NSRegularExpression(pattern: pattern, options: [])
        guard let matches = regEx?.matches(in: format,
                                           options: [],
                                           range: NSRange(location: 0, length: format.characters.count)) else {
                                            return ""
        }
        
        let rangesGroups: [[NSRange]] = matches.map { match in
            (0..<match.numberOfRanges).map { index in
                return  match.rangeAt(index)
            }
        }
        
        let matchedStrings:  [[String]] = rangesGroups.map { group -> [String]  in
            group.map { range -> String in
                guard range.length > 0 else { return "" }
                let start = format.index(format.startIndex, offsetBy: range.location)
                let endIndex = range.length + range.location
                let end = format.index(format.startIndex, offsetBy: endIndex)
                return format[start..<end]
            }
        }
        
        let result: (common: String, endings: [NumeralEnding : String]) = matchedStrings
            .enumerated()
            .reduce((common: "", endings: [NumeralEnding: String]())) { result, offsetElement in
                var ret = result
                let (offset, elenemt) = offsetElement
                if offset == 0 && elenemt.count > 1 && elenemt[1].isEmpty == false {
                    ret.common = elenemt[1]
                }
                if let count = Int(elenemt[2])?.numeralEnding {
                    let ending = elenemt[3]
                    ret.endings[count] = ending
                }
                return ret
        }
        return "\(result.common)\(result.endings[self.numeralEnding] ?? "")"
    }
}

// Example
public func organizationCount(_ count: Int) -> String {
    let counted = count.toNumeralEndingString(oneOf: "организация",
                                              twoOf: "организации",
                                              fiveOf: "организаций")
    return "В нашем каталоге \(count) \(counted)"
}
