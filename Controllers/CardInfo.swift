//
//  CardInfo.swift
//  Stats Of Runeterra
//
//  Created by Damian Lopez on 6/9/20.
//  Copyright © 2020 Damian Lopez. All rights reserved.
//

import Foundation



struct CardInfo: Codable {
    private var assets: [Assets]
    var region: String
    var type: String
    var name: String
    var cost: Int
    var imageURL: String? {
        return assets.first?.gameAbsolutePath
    }
}

struct Assets: Codable {
    var gameAbsolutePath: String
}

