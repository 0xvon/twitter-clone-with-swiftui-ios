//
//  ArtistInfo.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct ArtistInfo : View {
    var artist: Artist
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(artist.bandName)
                .color(.red)
            Text(artist.homepage)
                .color(.gray)
        }
    }
}

#if DEBUG
struct ArtistInfo_Previews : PreviewProvider {
    static var previews: some View {
        ArtistInfo(artist: artistData[0])
    }
}
#endif
