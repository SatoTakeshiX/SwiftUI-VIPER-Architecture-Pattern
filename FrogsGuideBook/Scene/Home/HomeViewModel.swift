//
//  HomeViewModel.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import Foundation

final class HomeViewModel: ObservableObject {

    struct Parameter {
        let coodinator: Coordinatable
    }

    enum Inputs {
        case didTapButton
        case didTapSettingButton
    }

    init(param: Parameter) {
        // TODO: Deepndencyを入れる
        self.param = param
    }

    private let param: Parameter



    func apply(inputs: Inputs) {
        switch inputs {
            case .didTapButton:
            break
            case .didTapSettingButton:
            break
        }
    }
}
