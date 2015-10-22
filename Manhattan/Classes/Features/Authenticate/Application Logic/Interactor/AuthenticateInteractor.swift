//
//  AuthenticateInteractor.swift
//  Manhattan
//
//  Created by Andrew Copp on 10/22/15.
//  Copyright © 2015 Andrew Copp. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class AuthenticateInteractor: NSObject, AuthenticateInteractorInput {

    let dataManager: AuthenticateDataManager
    
    init(dataManager: AuthenticateDataManager) {
        self.dataManager = dataManager
    }
    
    func startFacebookSession() {

        let readPermissions = dataManager.permissions()
        
        dataManager.loginToFacebook(readPermissions) {
            result, error in
            print("\(result.token.userID)")
        }
        
    }
    
}
