//
//  User.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Account : Hashable, Codable, Identifiable {
    var id: Int
    var displayName: String
    fileprivate var avatar: String
    var userName: String
    var prefersNotifications: Bool
    
    static let `default` = Self(userName: "masatojames", prefersNotifications: true, displayName: "masato")
    
    init(id: Int = 1, userName: String, prefersNotifications: Bool = true, displayName: String, avatar: String = "avatar") {
        self.id = id
        self.userName = userName
        self.prefersNotifications = prefersNotifications
        self.displayName = displayName
        self.avatar = avatar
    }
    
    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: avatar, size: size)
    }
}
