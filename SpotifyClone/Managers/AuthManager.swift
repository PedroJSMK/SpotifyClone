//
//  AuthManager.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 15/09/21.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
        
    }
    
    private var acessToken: String? {
        return nil
        
    }
    
    private var refreshToken: String? {
        return nil

    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var sholdRefreshToken: Bool {
        return false
    }

}
