//
//  FrogsListPresenter.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI
import Combine

final class FrogsListPresenter: ObservableObject {
    struct Parameter {
        let frogs: [Frog]
    }
    enum Inputs {
        case didTapAboutButton
    }
    private let router = FrogsListRouter()
    let params: Parameter
    @Published var isShowAbout = false
    init(params: Parameter) {
        self.params = params
    }

    func apply(inputs: Inputs) {
        switch inputs {
            case .didTapAboutButton:
                isShowAbout = true
        }
    }

    func linkBuilder<Content: View>(frog: Frog, @ViewBuilder content: () -> Content) -> some View {
        NavigationLink(destination: router.makeDetailView(frog: frog)) {
            content()
        }
    }

    func makeAboutButton() -> some View {
      Button(action: goToAbout) {
        Image(systemName: "questionmark.circle")
      }
    }

    func makeAboutWebView() -> some View {
        let url = URL(string: "https://github.com/SatoTakeshiX/SwiftUI-VIPER-Architecture-Pattern")!
        let webView = WebView(url: url)
        return webView
    }

    // MARK: - Private
    private func goToAbout() {
        isShowAbout = true
    }

}
