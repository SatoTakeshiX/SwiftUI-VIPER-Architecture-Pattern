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
    @EnvironmentObject var appState: AppState
    var body: some View {
        ZStack {
            if appState.isLogin {
                HomeTabView()
            } else {
                LoginView(appState: self.appState)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView().environmentObject(AppState())
    }
}
