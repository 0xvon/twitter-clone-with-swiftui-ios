//
//  SwiftUIView.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Tweet: Hashable, Codable, Identifiable {
    var id: Int
    var text: String
    var user: User
    fileprivate var imageName: String
    var isFavorite: Bool
    var isRetweeted: Bool
    var createdAt: String
    
    func image() -> Image {
        ImageStore.shared.image(name: imageName, size: 300)
    }
    
    
}
