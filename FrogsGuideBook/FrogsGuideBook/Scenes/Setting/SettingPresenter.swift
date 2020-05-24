//
//  SettingPresenter.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/24.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI
import Combine

final class SettingPresenter: ObservableObject {

    @Published var isShowAbout = false

    init(appState: AppState) {
        self.appState = appState
    }

    func makeAboutButton() -> some View {
        Button(action: goToAbout) {
            Text("About Frogs Guide Book")
        }
    }

    func makeLogoutButton() -> some View {
        Button(action: logout) {
            Text("Logout")
                .foregroundColor(.red)
        }
    }

    func goToAbout() {
        isShowAbout = true
    }

    func logout() {
        appState.isLogin = false
    }

    func makeAboutWebView() -> some View {
        return router.makeAboutWebView()
    }

    // Private
    private let router = SettingRouter()
    private let appState: AppState
}
