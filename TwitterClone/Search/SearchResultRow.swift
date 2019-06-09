//
//  SearchResultRow.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI
import UIKit

struct SearchResultRow : View {
    var artist: Artist
    
    var body: some View {
        HStack(alignment: .top) {
            TweetImage(image: artist.image(forSize: 100))
            ArtistInfo(artist: artist)
            Spacer()
        }
    }
}

#if DEBUG
struct SearchResultRow_Previews : PreviewProvider {
    static var previews: some View {
        SearchResultRow(artist: artistData[0])
    }
}
#endif
