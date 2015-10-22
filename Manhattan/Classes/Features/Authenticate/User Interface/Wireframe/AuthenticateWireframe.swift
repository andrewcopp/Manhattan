//
//  AuthenticateWireframe.swift
//  Manhattan
//
//  Created by Andrew Copp on 10/22/15.
//  Copyright © 2015 Andrew Copp. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

let AuthenticateViewControllerIdentifier = "AuthenticateViewController"

class AuthenticateWireframe: NSObject {
    
    var presenter: AuthenticateModuleInterface?
    var rootWireframe: RootWireframe?
    
    func presentAuthenticateInterfaceFromWindow(window: UIWindow) {
        let viewController = authenticateViewController()
        viewController.eventHandler = presenter
        
        rootWireframe?.showRootViewController(viewController, inWindow: window)
    }
    
    func authenticateViewController() -> AuthenticateViewController {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier(AuthenticateViewControllerIdentifier) as! AuthenticateViewController
        return viewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    }
    
}
