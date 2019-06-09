//
//  Artist.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI
import CoreLocation


struct Artist : Hashable, Codable, Identifiable {
    
    var id: Int
    var bandName: String
    var homepage: String
    var from: String
    var performance: [Performance]
    fileprivate var avatar: String
    
    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: avatar, size: size)
    }
}
