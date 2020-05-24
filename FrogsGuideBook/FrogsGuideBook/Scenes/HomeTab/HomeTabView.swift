//
//  HomeTabView.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/24.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

struct HomeTabView: View {
    @EnvironmentObject var appState: AppState
    var body: some View {
        TabView {
            NavigationView {
                FrogsListView(presenter: FrogsListPresenter(params: .init(frogs: mockFrogs)))
            }
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Frogs Guide")
                    }
            }
           .tag(1)

            NavigationView {
                SettingView(presenter: SettingPresenter(appState: appState))
            }
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("Setting")
                    }
            }
            .tag(2)
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView().environmentObject(AppState())
    }
}
