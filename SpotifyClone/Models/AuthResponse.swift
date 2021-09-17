//
//  AuthResponse.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 17/09/21.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_int: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}


  
