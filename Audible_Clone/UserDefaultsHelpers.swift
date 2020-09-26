//
//  UserDefaultsHelpers.swift
//  Audible_Clone
//
//  Created by David U. Okonkwo on 9/26/20.
//

import Foundation

extension UserDefaults{
    enum UserDefaultsKeys: String {
        case isLoggedIn
    }
    func setIsLoggedIn(value: Bool){
        set(false, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool{
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
}
