//
//  LoginPresenter.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI
import Combine

final class LoginPresenter: ObservableObject {

    enum Inputs {
        case didTapLoginButton
    }
    
    init(appState: AppState) {
        //isLogin = appState.isLogin
        self.appState = appState

        appState.$isLogin.sink { (isLogin) in
            print("isLogin")
        }
    .store(in: &cancellables)
    }

    func apply(inputs: Inputs) {
        switch inputs {
            case .didTapLoginButton:
                appState.isLogin = true
        }
    }

    // Private
    private var cancellables = Set<AnyCancellable>()
    private let appState: AppState
}
