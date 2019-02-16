//
//  ManipulatorViewModelTests.swift
//  UserSettingsManipulatorTests
//
//  Created by Nehal Elsawaf on 2/13/19.
//  Copyright © 2019 Yehia Elbehery. All rights reserved.
//

import XCTest
@testable import UserSettingsManipulator

class ManipulatorViewModelTests: XCTestCase {

    func testSet(){
        let testKey = "TestKey"
        
        let viewModel = ManipulatorViewModel()
        viewModel.set("1", key: testKey)
        XCTAssert(UserPreference.get(testKey) as? String == "1")
        
        viewModel.set(nil, key: testKey)
        XCTAssert(UserPreference.get(testKey)as? String == "1")
    }

}
