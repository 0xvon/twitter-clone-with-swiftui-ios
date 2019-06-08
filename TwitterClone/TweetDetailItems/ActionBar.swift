//
//  ActionBar.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct ActionBar : View {
    @EnvironmentObject var userData: UserData
    var tweet: Tweet
    var tweetIndex: Int {
        userData.tweets.firstIndex(where: { $0.id == tweet.id })!
    }
    
    var body: some View {
        HStack {
            Button(action: {
                self.userData.tweets[self.tweetIndex].isRetweeted.toggle()
            }) {
                if self.userData.tweets[self.tweetIndex]
                    .isRetweeted {
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color.pink)
                } else {
                    Image(systemName: "heart")
                        .foregroundColor(Color.gray)
                }
                
            }
                .padding()
            
            Button(action: {
                self.userData.tweets[self.tweetIndex].isFavorite.toggle()
            }) {
                if self.userData.tweets[self.tweetIndex]
                    .isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                } else {
                    Image(systemName: "star")
                        .foregroundColor(Color.gray)
                }
                
            }
                .padding()
            
            Image(systemName: "map")
                .padding()
            Image(systemName: "pause")
                .padding()
        }
        
    }
}

#if DEBUG
struct ActionBar_Previews : PreviewProvider {
    static var previews: some View {
        ActionBar(tweet: tweetsData[0])
    }
}
#endif
