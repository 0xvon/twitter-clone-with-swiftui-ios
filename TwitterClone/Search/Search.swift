//
//  Search.swift
//  TwitterClone
//
//  Created by Masato TSUTSUMI on 2019/06/09.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import SwiftUI

struct Search : View {
    var body: some View {
        VStack {
            SearchResult()
        }
    }
}

#if DEBUG
struct Search_Previews : PreviewProvider {
    static var previews: some View {
        Search()
    }
}
#endif
