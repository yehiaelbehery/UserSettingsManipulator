//
//  DictionaryExtensionsTests.swift
//  UserSettingsManipulatorTests
//
//  Created by Nehal Elsawaf on 2/12/19.
//  Copyright © 2019 Yehia Elbehery. All rights reserved.
//

import XCTest
@testable import UserSettingsManipulator

class DictionaryExtensionsTests: XCTestCase {

    func test_convertedToJSONString() {
        let dictionary = ["name": "yehia"]
        XCTAssert(dictionary._convertedToJSONString()?._replaceRegexMatches(pattern: "[\\s]", replaceWith: "") == "{\"name\":\"yehia\"}")
        
    }

}
