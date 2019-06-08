//
//  TweetView.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct TweetView : View {
    @EnvironmentObject var userData: UserData
    var tweet: Tweet
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text(tweet.text)
                Spacer()
            }
            TweetImage(image: tweet.image(forSize: 300))
        }
            .padding()
    }
}

#if DEBUG
struct TweetView_Previews : PreviewProvider {
    static var previews: some View {
        TweetView(tweet: tweetsData[0])
    }
}
#endif
