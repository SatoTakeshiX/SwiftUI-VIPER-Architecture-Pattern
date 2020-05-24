//
//  AppState.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import Combine

final class AppState {
    @Published var isLogin = false

    func loadState() {
        isLogin = true
    }
}

extension AppState: ObservableObject {}
