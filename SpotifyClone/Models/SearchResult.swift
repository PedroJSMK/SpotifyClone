//
//  SearchResult.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 18/09/21.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
