//
//  AuthManager.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 15/09/21.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = " "
        static let clientSecret = " "
    }
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://github.com/PedroJSMK"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
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
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ){
    
    }
    public func refreshAccessToken() {
        
    }
    private func cacheToken() {
        
    }
}
