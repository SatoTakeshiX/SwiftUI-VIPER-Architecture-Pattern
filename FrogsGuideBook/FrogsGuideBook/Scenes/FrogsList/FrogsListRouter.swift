//
//  FrogsListRouter.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

final class FrogsListRouter {
    func makeDetailView(frog: Frog) -> some View {
        let presenter = FrogDetailPresenter(frog: frog)
        let detail = FrogDetailView(presenter: presenter)
        return detail
    }

    func makeAboutWebView() -> some View {
        let url = URL(string: "https://github.com/SatoTakeshiX/SwiftUI-VIPER-Architecture-Pattern")!
        let webView = WebView(url: url)
        return webView
    }
}

struct FrogsListRouter_Previews: PreviewProvider {
    static var previews: some View {
        FrogsListRouter().makeDetailView(frog: mockFrogs[0])
    }
}
