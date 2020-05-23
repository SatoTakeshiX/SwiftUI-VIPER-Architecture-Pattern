//
//  FrogsListRouter.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

final class FrogsListRouter {
    func makeDetailView() -> some View {
        return Text("detail frog")
    }
}

struct FrogsListRouter_Previews: PreviewProvider {
    static var previews: some View {
        FrogsListRouter().makeDetailView()
    }
}
