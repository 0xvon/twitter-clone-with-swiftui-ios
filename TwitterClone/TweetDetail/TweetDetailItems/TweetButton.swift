//
//  TweetButton.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct TweetButton : View {
    
    var body: some View {
        Button(action: {
            CreateTweet()
        }) {
            Image(systemName: "map")
        }
    }
}

#if DEBUG
struct TweetButton_Previews : PreviewProvider {
    static var previews: some View {
        TweetButton()
    }
}
#endif
