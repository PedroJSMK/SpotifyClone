//
//  Playlist.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 15/09/21.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
