//
//  Home.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct Home : View {
    @State private var selection = 0
    
    var body: some View {
        TabbedView(selection: $selection) {
            Timeline()
                .tabItemLabel(Text("Timeline"))
                .tag(0)
            
            Search()
                .tabItemLabel(Text("search"))
                .tag(1)
            
            MyPage()
                .tabItemLabel(Text("MyPage"))
                .tag(2)
        }
            .onAppear {
                print("ooooooo")
            }
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif
