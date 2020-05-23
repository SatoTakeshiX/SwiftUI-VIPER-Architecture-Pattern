//
//  AppCoordinator.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/22.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import UIKit
import SwiftUI

protocol Coordinatable {
    func start()
    func finish()
    func abort()
}

final class AppCoordinator: Coordinatable {

    let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }
    func start() {
        let homeCoodinator = HomeCoordinator(params: ())
        window.rootViewController = UIHostingController(rootView: homeCoodinator.generateView())
        window.makeKeyAndVisible()
    }

    func finish() {
    }

    func abort() {
    }
}


protocol CoordinatorState {
    associatedtype Body: View
    static var initialState: Self { get }
    func screen() -> Body
    func nextState(coordinator: Coordinatable) -> Self?
}


// ルーター的な型がほしい。一覧でみたい
//するとこれはどこに依存するんだ？だれがRequestStateを保持する？
enum RequestState: CoordinatorState {
    case login
    case home
    case detail
    case setting

    static var initialState: RequestState {
        return .login
    }

    func screen() -> some View {
        switch self {
            case .login:
            return ContentView()
            case .home:
            return ContentView()
            case .detail:
            return ContentView()
            case .setting:
            return ContentView()
        }
    }

    func nextState(coordinator: Coordinatable) -> RequestState? {
        switch self {
            case .login:
                return .home
            case .home:
                return .detail
            case .detail:
                coordinator.finish()
            return nil
            case .setting:
                coordinator.finish()
            return nil
        }
    }
}
