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
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button(action: {
                self.presenter.apply(inputs: .didTapAlertButton)
            }, label: {
                Text("show alert")
            })
            self.presenter.linkBuilder {
                Text("link")
            }
        }
        .alert(isPresented: $presenter.isShowError, content: presenter.alertBuilder)
        .navigationBarTitle("Frogs Guide Book", displayMode: .inline)
    }
}

struct FrogsListView_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = FrogsListPresenter(params: .init(title: "testtest"))
        let list = FrogsListView(presenter: presenter)
        return list
    }
}
