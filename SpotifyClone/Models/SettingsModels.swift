//
//  SettingsModels.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 17/09/21.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
