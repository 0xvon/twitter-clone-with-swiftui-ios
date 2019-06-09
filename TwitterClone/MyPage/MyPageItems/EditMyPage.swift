//
//  EditMyPage.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct EditMyPage : View {
    @EnvironmentObject var userData: UserData
    @Binding var account: Account
    
    var body: some View {
        List {
            HStack {
                Text("display name")
                Divider()
                TextField($account.displayName)
                Spacer()
            }
            
            HStack {
                Text("user name")
                Divider()
                TextField($account.userName)
                Spacer()
            }

            
            Toggle(isOn: $account.prefersNotifications) {
                Text("Enable Notifications")
            }
            Spacer()
        }
    }
}

#if DEBUG
struct EditMyPage_Previews : PreviewProvider {
    static var previews: some View {
        EditMyPage(account: .constant(.default))
    }
}
#endif
