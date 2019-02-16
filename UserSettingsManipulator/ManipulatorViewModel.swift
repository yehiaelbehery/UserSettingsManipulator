//
//  ManipulatorViewModel.swift
//  UserSettingsManipulator
//
//  Created by Nehal Elsawaf on 2/13/19.
//  Copyright © 2019 Yehia Elbehery. All rights reserved.
//

import UIKit

protocol ManipulatorViewModelDelegate: class {
    func showInvalidJSONError()
    func showEmptyJSONError()
}

class ManipulatorViewModel: NSObject {
    
    var delegate: ManipulatorViewModelDelegate?
    
    func setUserSettings(_ JSONString: String){
        if let dict = JSONString._JSONStringConvertedToDictionary() {
            
            for (key, value) in dict {
                UserPreference.set(value, key: key)
            }
        }
    }
}
