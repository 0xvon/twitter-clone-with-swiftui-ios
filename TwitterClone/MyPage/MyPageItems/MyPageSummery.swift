//
//  MyPageSummery.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct MyPageSummery : View {
    @EnvironmentObject var userData: UserData
    var account: Account
    
    var body: some View {
        List {
            HStack {
                Text("display name")
                Text(account.displayName)
                Spacer()
            }
            
            HStack {
                Text("user name")
                Text(account.userName)
                Spacer()
            }
            
            Text("Notifications: \(self.account.prefersNotifications ? "On": "Off" )")
        }
    }
}

#if DEBUG
struct MyPageSummery_Previews : PreviewProvider {
    static var previews: some View {
        MyPageSummery(account: Account.default)
    }
}
#endif
