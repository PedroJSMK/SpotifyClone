//
//  LibraryAlbumsResponse.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 18/09/21.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
