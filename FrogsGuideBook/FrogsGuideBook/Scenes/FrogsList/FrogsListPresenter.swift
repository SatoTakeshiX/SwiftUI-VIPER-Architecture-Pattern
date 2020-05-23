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
        let title: String
    }

    enum Inputs {
        case didTapAlertButton
        case onApear
    }

    private let router = FrogsListRouter()

    private let params: Parameter

    @Published var isShowError = false

    init(params: Parameter) {
        self.params = params
    }

    func apply(inputs: Inputs) {
        switch inputs {
            case .didTapAlertButton:
                isShowError = true
            break
            case .onApear:
            break
        }
    }

    func linkBuilder<Content: View>(@ViewBuilder content: () -> Content) -> some View {
        ////ここここ、presenterでnavigaionlinkを作っている。そして、実際はrouterにまかせている。
        NavigationLink(destination: router.makeDetailView()) {
            content()
        }
    }

    func alertBuilder() -> Alert {
        let alertButton = Alert.Button.default(Text("OK")) {
            print("OKボタンをタップした")
        }
        let alert = Alert(title: Text("エラーが起こりました"), message: Text("しばらくしてから再度ためしてください。"), dismissButton: alertButton)
        return alert
    }

    func makeQuestionButton() -> some View {
      Button(action: goToHelp) {
        Image(systemName: "questionmark.circle")
      }
    }

    func goToHelp() {

    }
}
