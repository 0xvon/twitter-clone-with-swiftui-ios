//
//  Location.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Location : Hashable, Codable, Identifiable {
    var id: Int
    var place: String
    var capacity: Int
}
