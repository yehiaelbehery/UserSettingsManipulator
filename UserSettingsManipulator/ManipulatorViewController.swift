//
//  ManipulatorViewController.swift
//  UserSettingsManipulator
//
//  Created by Nehal Elsawaf on 2/12/19.
//  Copyright © 2019 Yehia Elbehery. All rights reserved.
//

import UIKit

let UserSettingsManipulatorUserDefaultsKey = "__UserSettingsManipulatorUserDefaultsKey__"


class ManipulatorViewController: UIViewController {

    @IBOutlet fileprivate var saveButton: UIButton!
    @IBOutlet fileprivate var revertButton: UIButton!
    @IBOutlet fileprivate var closeButton: UIButton!
    
    @IBOutlet fileprivate var JSONTextView: UITextView!
    
    fileprivate let viewModel = ManipulatorViewModel()
    
    let originalInJSON: String = UserDefaults.standard.dictionaryRepresentation()._convertedToJSONString()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        
        JSONTextView.text = originalInJSON
    }
    
    @IBAction fileprivate func closeButtonTapped(){
       close()
    }
    @IBAction fileprivate func revertButtonTapped(){
        JSONTextView.text = originalInJSON
    }
    @IBAction fileprivate func saveButtonTapped(){
        viewModel.setUserSettings(JSONTextView.text)
        close()
    }
    
    func close(){
         self.dismiss(animated:true)
    }
}
extension ManipulatorViewController: ManipulatorViewModelDelegate {
    
    func showInvalidJSONError(){
        
    }
    func showEmptyJSONError(){
        
    }
}
