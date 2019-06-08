//
//  CircleView.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//


import SwiftUI

struct TweetImage: View {
    @Environment(\.pixelLength) var pixelLength: Length
    var image: Image
    
    var body: some View {
        image
            .relativeSize(width: 2 / pixelLength, height: 200)
    }
}

#if DEBUG
struct TweetImage_Previews: PreviewProvider {
    static var previews: some View {
        TweetImage(image: Image("story"))
    }
}
#endif
