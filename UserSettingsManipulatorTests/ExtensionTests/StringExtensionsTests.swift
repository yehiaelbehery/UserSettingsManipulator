//
//  StringExtensionsTests.swift
//  UserSettingsManipulatorTests
//
//  Created by Nehal Elsawaf on 2/12/19.
//  Copyright © 2019 Yehia Elbehery. All rights reserved.
//

import XCTest
@testable import UserSettingsManipulator

class StringExtensionsTests: XCTestCase {

    func test_trimmed() {
        let str = " str "
        XCTAssert(str._trimmed() == "str")
    }
    func test_JSONStingConvertedToDictionary() {
        let JSON = "{\"name\":\"yehia\"}"
        XCTAssert((JSON._JSONStringConvertedToDictionary() as! [String: String])["name"] == "yehia")
        
    }
    func test_replaceRegexMatches(){
        let str = "1abc2"
        XCTAssert(str._replaceRegexMatches(pattern: "[a-z]+", replaceWith: "") == "12")
    }
}
