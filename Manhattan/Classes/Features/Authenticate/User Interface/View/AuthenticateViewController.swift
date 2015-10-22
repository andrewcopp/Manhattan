//
//  AuthenticateViewController.swift
//  Manhattan
//
//  Created by Andrew Copp on 9/20/15.
//  Copyright (c) 2015 Andrew Copp. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class AuthenticateViewController: UIViewController {
    
    var eventHandler: AuthenticateModuleInterface?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func facebookLoginButtonPressed(sender: UIButton) {
        
        eventHandler?.loginToFacebook()

    }
    
}
