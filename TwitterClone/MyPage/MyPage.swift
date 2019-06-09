//
//  MyPage.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct MyPage : View {
    @Environment(\.editMode) var mode
    @State var account = Account.default
    @State var draftAccount = Account.default
    
    var body: some View {
        VStack {
            EditItem()
            .padding()
            
            
            BackgroundView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: account.image(forSize: 150))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(account.displayName)
                        .font(.title)
                    Image(systemName: "star")
                }
                HStack(alignment: .top) {
                    Text("@" + account.userName)
                        .font(.subheadline)
                        .color(.gray)
                    Spacer()
                    Text("Fuck my Life")
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#if DEBUG
struct MyPage_Previews : PreviewProvider {
    static var previews: some View {
        MyPage(account: accountData)
    }
}
#endif
