//
//  User.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI
import CoreLocation

struct User : Hashable, Codable, Identifiable {
    var id: Int
    var displayName: String
    fileprivate var avatar: String
    var userName: String
    
    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: avatar, size: size)
    }
}
