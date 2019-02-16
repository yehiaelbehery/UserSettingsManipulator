//
//  UserSettingsManipulator.swift
//  UserSettingsManipulator
//
//  Created by Yehia Elbehery on 2/12/19.
//  Copyright © 2019 Yehia Elbehery. All rights reserved.
//

import UIKit

public class UserSettingsManipulator: NSObject {
    
    static public let shared: UserSettingsManipulator =  {
        return UserSettingsManipulator()
    }()
    
    public func launch(inViewController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) {
        guard let parentViewController = inViewController else{
            return
        }
        let bundle = Bundle(for: type(of: self))
        let manipulator = UIStoryboard(name:"ManipulatorView", bundle:bundle).instantiateViewController(withIdentifier: "Manipulator") as! ManipulatorViewController
        parentViewController.present(manipulator, animated: true)
    }
}
