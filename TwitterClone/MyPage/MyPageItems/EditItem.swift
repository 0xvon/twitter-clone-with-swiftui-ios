//
//  MyPage.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct EditItem : View {
    @Environment(\.editMode) var mode
    @State var account = Account.default
    @State var draftAccount = Account.default
    
    var body: some View {
        VStack {
            HStack {
                if self.mode?.value == .active {
                    Button(action: {
                        self.account = self.draftAccount
                        self.mode?.animation().value = .inactive
                    }) {
                        Text("Done")
                    }
                }
                Spacer()
                
                EditButton()
            }
            if self.mode?.value == .inactive {
                MyPageSummery(account: account)
            } else {
                EditMyPage(account: $draftAccount)
                    .onDisappear {
                        self.draftAccount = self.account
                }
            }
        }
    }
}


#if DEBUG
struct EditItem_Previews : PreviewProvider {
    static var previews: some View {
        EditItem(account: accountData)
    }
}
#endif
