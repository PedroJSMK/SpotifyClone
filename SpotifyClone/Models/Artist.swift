//
//  Artist.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 15/09/21.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
