//
//  UserView.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct UserView : View {
    @EnvironmentObject var userData: UserData
    var tweet: Tweet
    
    var body: some View {
        HStack {
            CircleImage(image: tweet.user.image(forSize: 64))
                .padding()
            VStack(alignment: .leading) {
                Text(tweet.user.displayName)
                Text("@" + tweet.user.userName)
                    .color(.gray)
            }
            Spacer()
        }
    }
}

#if DEBUG
struct UserView_Previews : PreviewProvider {
    static var previews: some View {
        UserView(tweet: tweetsData[0])
    }
}
#endif
