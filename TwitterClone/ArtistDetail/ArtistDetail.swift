//
//  ArtistDetail.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct ArtistDetail : View {
    @EnvironmentObject var userData: UserData
    var artist: Artist
    
    var body: some View {
        VStack {
            BackgroundView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: artist.image(forSize: 150))
                .offset(y: -230)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(artist.bandName)
                        .font(.title)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                
            }
            
            Spacer()
        }
    }
}

#if DEBUG
struct ArtistDetail_Previews : PreviewProvider {
    static var previews: some View {
        ArtistDetail(artist: artistData[0])
    }
}
#endif
