//
//  ContentView.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct TweetDetail: View {
    @EnvironmentObject var userData: UserData
    var tweet: Tweet
//    var tweetIndex
    
    var body: some View {
        VStack {
            HStack(alignment: .leading) {
                CircleImage(image: tweet.user.image(forSize: 64))
                    .padding()
                VStack(alignment: .leading) {
                    Text(tweet.user.displayName)
                    Text("@" + tweet.user.userName)
                }
                Spacer()
            }
            
            VStack(alignment: .leading) {
                HStack(alignment: .leading) {
                    Text(tweet.text)
                }
//                TweetImage(image: tweet.image(forSize: 250))
            }
            Spacer()
            
        }
    }
    
}

#if DEBUG
struct TweetDetail_Previews : PreviewProvider {
    static var previews: some View {
        TweetDetail(tweet: tweetsData[0])
    }
}
#endif
