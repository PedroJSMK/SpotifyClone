//
//  AlbumDetailsResponse.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 18/09/21.
//

import Foundation

struct AlbumDetailsResponse: Codable {
    let album_type: String
    let artists: [Artist]
    let available_markets: [String]
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let label: String
    let name: String
    let tracks: TracksResponse
}


struct TracksResponse: Codable {
    let items: [AudioTrack]
}
