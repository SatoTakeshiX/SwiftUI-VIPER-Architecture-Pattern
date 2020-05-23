//
//  RootView.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

// RootView
struct RootView: View {
    var body: some View {
        NavigationView {
            FrogsListView(presenter: FrogsListPresenter(params: .init(title: "Frogs Guide List")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
