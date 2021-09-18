//
//  RecommendationsResponse.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 18/09/21.
//

import Foundation

struct RecommendationsResponse: Codable {
    let tracks: [AudioTrack]
}
