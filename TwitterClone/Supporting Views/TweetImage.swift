//
//  CircleView.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//


import SwiftUI

struct TweetImage: View {
    var image: Image
    
    var body: some View {
        image
            .relativeSize(width: 300, height: 200)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct TweetImage_Previews: PreviewProvider {
    static var previews: some View {
        TweetImage(image: Image("story"))
    }
}
#endif
