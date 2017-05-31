import UIKit
import XCTest
import NumeralEndings

class Tests: XCTestCase {
    
    func testOneHour() {
        let first = "час"
        let second = "часа"
        let third = "часов"
        let counted = 1.toNumeralEndingString(first: first,
                                              second: second,
                                              third: third)
        let expected = "час"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testTwoHours() {
        let first = "час"
        let second = "часа"
        let third = "часов"
        let counted = 2.toNumeralEndingString(first: first,
                                              second: second,
                                              third: third)
        let expected = "часа"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testFiveHours() {
        let first = "час"
        let second = "часа"
        let third = "часов"
        let counted = 5.toNumeralEndingString(first: first,
                                              second: second,
                                              third: third)
        let expected = "часов"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testElevenHours() {
        let first = "час"
        let second = "часа"
        let third = "часов"
        let counted = 5.toNumeralEndingString(first: first,
                                              second: second,
                                              third: third)
        let expected = "часов"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testALotOfHours() {
        let first = "час"
        let second = "часа"
        let third = "часов"
        let counted = 1256.toNumeralEndingString(first: first,
                                                 second: second,
                                                 third: third)
        let expected = "часов"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testTo100Hours() {
        let first = "час"
        let second = "часа"
        let third = "часов"
        let counted = (1...100).map {
            $0.toNumeralEndingString(first: first, second: second, third: third)
        }
        let expected = ["час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "час",
                        "часа",
                        "часа",
                        "часа",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов",
                        "часов"]
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
}
