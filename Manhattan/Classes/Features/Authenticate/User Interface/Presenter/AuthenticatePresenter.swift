//
//  AuthenticatePresenter.swift
//  Manhattan
//
//  Created by Andrew Copp on 10/22/15.
//  Copyright © 2015 Andrew Copp. All rights reserved.
//

import UIKit

class AuthenticatePresenter: NSObject, AuthenticateModuleInterface {

    let authenticateInteractor: AuthenticateInteractorInput
    
    init(interactor: AuthenticateInteractorInput) {
        authenticateInteractor = interactor
    }
    
    func loginToFacebook() {
        authenticateInteractor.startFacebookSession()
    }
    
}

