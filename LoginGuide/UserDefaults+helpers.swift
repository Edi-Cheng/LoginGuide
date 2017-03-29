//
//  UserDefaults+helpers.swift
//  LoginGuide
//
//  Created by Lin Cheng on 30/03/2017.
//  Copyright © 2017 Lin Cheng. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    enum UserDefaultsKeys: String {
        case isLoggedIn
    }
    
    
    func setIsLoggedIn(vaule: Bool) {
        set(vaule, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
    
}
