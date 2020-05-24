//
//  FrogDetailPresenter.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/24.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI
import Combine

final class FrogDetailPresenter: ObservableObject {

    struct Parameter {
        let frog: Frog
    }

    enum Inputs {
        case didTapAskTheProfessor
    }

    @Published var isShowError = false
    let frog: Frog

    init(frog: Frog) {
        self.frog = frog
    }

    func apply(inputs: Inputs) {
        switch inputs {
            case .didTapAskTheProfessor:
                isShowError = true
        }
    }

    func alertBuilder() -> Alert {
        let alertButton = Alert.Button.default(Text("OK")) {
            print("did tap alert OK button")
        }
        let alert = Alert(title: Text("This feature is out of service"), message: Text("Please wait a little longer for service to begin. It may take a few days."), dismissButton: alertButton)
        return alert
    }

    func makeAskTheProfessorButton() -> some View {
        Button(action: didTapAskButton) {
            HStack {
                Text("Ask the Professor")
                Spacer()
                Image(systemName: "chevron.right")
                    .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
                .frame(width: 20, height: 20)
            }
        }
    }

    // Mark: - Private

    private func didTapAskButton() {
        apply(inputs: .didTapAskTheProfessor)
    }
}
