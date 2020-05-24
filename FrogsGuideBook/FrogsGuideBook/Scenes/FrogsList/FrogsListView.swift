//
//  FrogsListView.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

struct FrogsListView: View {
    @ObservedObject var presenter: FrogsListPresenter
    var body: some View {
        List {
            ForEach(presenter.params.frogs, id: \.id) { frog in
                self.presenter.linkBuilder(frog: frog) {
                    ImageCard(imageName: frog.imageName, frogName: frog.name)
                    .frame(height: 240)
                }
            }
        }
        .sheet(isPresented: $presenter.isShowAbout) {
            self.presenter.makeAboutWebView()
        }
        .navigationBarTitle("Frogs Guide Book", displayMode: .inline)
        .navigationBarItems(trailing: presenter.makeAboutButton())
    }
}

struct FrogsListView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = FrogsListPresenter(params: .init(frogs: mockFrogs))
        let list = FrogsListView(presenter: presenter)
        return Group {
            NavigationView {
                list
            }
            presenter.makeAboutButton()
                .previewLayout(.fixed(width: 50, height: 50))
        }
    }
}
