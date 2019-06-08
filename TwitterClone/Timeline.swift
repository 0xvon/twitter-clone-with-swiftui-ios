//
//  Timeline.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/08.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct Timeline : View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.tweets) { tweet in
                    NavigationButton(destination: TweetDetail(tweet: tweet)) {
                        TimelineRow(tweeet: tweet)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct Timeline_Previews : PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
            Timeline()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
            }
            .environmentObject(UserData())
    }

}
#endif
