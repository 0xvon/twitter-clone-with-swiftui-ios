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
            UserView(tweet: tweet)
            TweetView(tweet: tweet)
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
