//
//  RootPresenter.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI
import Combine

final class RootPresenter: ObservableObject {
    @Published var isLogin: Bool

    private var cancellables = Set<AnyCancellable>()

    init(appState: AppState) {
        self.isLogin = appState.isLogin

        appState.$isLogin
            .assign(to: \.isLogin, on: self)
            .store(in: &cancellables)
    }

}
