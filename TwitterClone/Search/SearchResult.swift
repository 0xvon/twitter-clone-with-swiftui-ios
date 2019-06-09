//
//  SearchResult.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct SearchResult : View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.artists) { artist in
                    NavigationButton(destination: ArtistDetail(artist: artist)) {
                        SearchResultRow(artist: artist)
                    }
                }
            }
            .navigationBarTitle(Text("Artists"))
        }
        
        
    }
}

#if DEBUG
struct SearchResult_Previews : PreviewProvider {
    static var previews: some View {
        SearchResult()
    }
}
#endif
