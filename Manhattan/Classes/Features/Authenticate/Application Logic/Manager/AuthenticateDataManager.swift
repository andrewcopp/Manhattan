//
//  AuthenticateDataManager.swift
//  Manhattan
//
//  Created by Andrew Copp on 10/22/15.
//  Copyright © 2015 Andrew Copp. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class AuthenticateDataManager: NSObject {

    let facebookStore: FBSDKLoginManager
    
    init(facebookStore: FBSDKLoginManager) {
        self.facebookStore = facebookStore
    }
    
    func loginToFacebook(readPermissions: [String], handler: FBSDKLoginManagerRequestTokenHandler) {
        facebookStore.logInWithReadPermissions(readPermissions, handler: handler)
    }
    
    internal func permissions() -> [String] {
        return requiredPermissions() + optionalPermissions()
    }
    
    internal func requiredPermissions() -> [String] {
        let resourcePath = NSBundle.mainBundle().pathForResource("FacebookRequiredPermissions", ofType: "plist")
        
        return permissionsArrayWithContentsOfFile(resourcePath!)
    }
    
    private func optionalPermissions() -> [String] {
        let resourcePath = NSBundle.mainBundle().pathForResource("FacebookOptionalPermissions", ofType: "plist")
        
        return permissionsArrayWithContentsOfFile(resourcePath!)
    }
    
    private func permissionsArrayWithContentsOfFile(resourcePath: String) -> [String] {
        let objcArray = NSArray(contentsOfFile: resourcePath)
        
        let swiftArray = objcArray as! [AnyObject]
        if let downcastedSwiftArray = swiftArray as? [String] {
            return downcastedSwiftArray
        } else {
            return []
        }
    }
}
