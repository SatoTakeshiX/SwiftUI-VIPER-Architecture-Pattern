//
//  SettingRouter.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/24.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

final class SettingRouter {
    func makeAboutWebView() -> some View {
        let url = URL(string: "https://github.com/SatoTakeshiX/SwiftUI-VIPER-Architecture-Pattern")!
        let webView = WebView(url: url)
        return webView
    }
}
