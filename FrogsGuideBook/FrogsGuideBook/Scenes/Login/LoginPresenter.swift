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
        self.appState = appState
    }
    func apply(inputs: Inputs) {
        switch inputs {
            case .didTapLoginButton:
                appState.isLogin = true
        }
    }
    // Private
    private let appState: AppState
}
