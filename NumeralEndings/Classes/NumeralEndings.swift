import Foundation


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
}

// Example
public func organizationCount(_ count: Int) -> String {
    let counted = count.toNumeralEndingString(oneOf: "организация",
                                              twoOf: "организации",
                                              fiveOf: "организаций")
    return "В нашем каталоге \(count) \(counted)"
}
