//
//  SettingView.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/24.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

struct SettingView: View {
    @ObservedObject var presenter: SettingPresenter
    @EnvironmentObject var appState: AppState
    var body: some View {
        List {
            self.presenter.makeAboutButton()
            self.presenter.makeLogoutButton()
        }
        .sheet(isPresented: $presenter.isShowAbout) {
            self.presenter.makeAboutWebView()
        }
        .navigationBarTitle("Setting", displayMode: .inline)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        let appState = AppState()
        let presenter = SettingPresenter(appState: appState)
        return NavigationView {
            SettingView(presenter: presenter)
        }
    }
}
