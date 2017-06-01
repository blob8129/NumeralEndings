//
//  VisualFormatTests.swift
//  NumeralEndings
//
//  Created by Andrey Volobuev on 01/06/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//
import UIKit
import XCTest
import NumeralEndings

class VisualFormatTests: XCTestCase {

    func testOneHour() {
        let counted = 1.toNumeralEndingString(format: "час2а5ов")
        let expected = "час"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testTwoHours() {
        let counted = 2.toNumeralEndingString(format: "час2а5ов")
        let expected = "часа"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testFiveHours() {
        let counted = 5.toNumeralEndingString(format: "час2а5ов")
        let expected = "часов"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testOneYear() {
        let counted = 1.toNumeralEndingString(format: "1год2года5лет")
        let expected = "год"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testTwoYears() {
        let counted = 2.toNumeralEndingString(format: "1год2года5лет")
        let expected = "года"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testFiveYears() {
        let counted = 5.toNumeralEndingString(format: "1год2года5лет")
        let expected = "лет"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testOneApples() {
        let counted = 1.toNumeralEndingString(format: "яблок1о2а")
        let expected = "яблоко"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testTwoApples() {
        let counted = 2.toNumeralEndingString(format: "яблок1о2а")
        let expected = "яблока"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testFiveApples() {
        let counted = 5.toNumeralEndingString(format: "яблок1о2а")
        let expected = "яблок"
        XCTAssertTrue(counted == expected, "Expected \(expected) not \(counted)")
    }
    
    func testTo100Hours() {

        let counted = (1...100).map {
            $0.toNumeralEndingString(format: "час2а5ов")
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

