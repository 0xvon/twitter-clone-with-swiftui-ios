//
//  TimelineRow.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct TimelineRow : View {
    var tweeet: Tweet
    
    var body: some View {
        HStack(alignment: .top) {
            CircleImage(image: tweeet.user.image(forSize: 64))
            VStack(alignment: .leading) {
                HStack {
                    Text(tweeet.user.displayName)
                    Text("@" + tweeet.user.userName)
                        .color(.gray)
                    Text(tweeet.createdAt)
                        .color(.gray)
                    
                }
                    .padding()
                
                Text(tweeet.text)
                    .padding()
                TweetImage(image: tweeet.image(forSize:200))
                    .padding()
            }
            Spacer()
            
        }
    }
}

#if DEBUG
struct TimelineRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            TimelineRow(tweeet: tweetsData[0])
            TimelineRow(tweeet: tweetsData[1])
            }
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
