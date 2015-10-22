//
//  AppDependencies.swift
//  Manhattan
//
//  Created by Andrew Copp on 10/22/15.
//  Copyright © 2015 Andrew Copp. All rights reserved.
//

import UIKit
import Foundation

import FBSDKLoginKit

class AppDependencies {
    var authenticateWireframe = AuthenticateWireframe()
    
    init() {
        configureDependencies()
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        authenticateWireframe.presentAuthenticateInterfaceFromWindow(window)
    }
    
    func configureDependencies() {
        
        let rootWireframe = RootWireframe()
        
        authenticateWireframe.rootWireframe = rootWireframe
        
        let authenticateDataManager = AuthenticateDataManager(facebookStore: FBSDKLoginManager())
        let authenticateInteractor = AuthenticateInteractor(dataManager: authenticateDataManager)
        let authenticatePresenter = AuthenticatePresenter(interactor: authenticateInteractor)
        
        authenticateWireframe.presenter = authenticatePresenter
    }
}