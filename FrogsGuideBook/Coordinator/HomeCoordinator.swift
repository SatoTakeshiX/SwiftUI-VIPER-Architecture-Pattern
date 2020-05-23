//
//  HomeCoordinator.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import UIKit
import SwiftUI
import Combine

final class HomeCoordinator: Coordinatable {

    typealias Parameters = Void
    //typealias Body = some View

    init(params: Parameters) {
        self.params = params
    }

    let onStartSubject = PassthroughSubject<Body, Never>()

    let params: Parameters
    func start() {
        //
        let home = HomeView()
        // これをどう反映していけばいいんだ？AppCoordinatorに
    }

    func generateView() -> some View {
        return HomeView()
    }

    func finish() {

    }

    func abort() {

    }
}


struct ProductFamilyRowStyle: ButtonStyle {

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .colorMultiply(configuration.isPressed ?
                 Color.white.opacity(0.5) : Color.white) // any effect you want
    }
}

struct ProductFamilyItem {
    let title: String
}
struct ProductFamilyRow<D1: View, D2: View>: View {
    let item: ProductFamilyItem
    let destinationView1: () -> D1
    let destinationView2: () -> D2

    init(item: ProductFamilyItem, @ViewBuilder destinationView1: @escaping () -> D1,
        @ViewBuilder destinationView2: @escaping () -> D2)
    {
        self.item = item
        self.destinationView1 = destinationView1
        self.destinationView2 = destinationView2
    }

    @State private var selection: Int? = 0

    var body: some View {
        VStack {
            HStack {
                Text(item.title)
                Button(action: {
                    self.selection = 1
                }) {
                    Text("Destination 1")
                        .background( // hide link inside button !!
                            NavigationLink(destination: destinationView1(),
                                tag: 1, selection: self.$selection) { EmptyView() }
                        )
                }.foregroundColor(Color.blue)

                Button(action: {
                    self.selection = 2
                }) {
                    Text("Destination 2")
                        .background(
                            NavigationLink(destination: destinationView2(),
                                tag: 2, selection: self.$selection) { EmptyView() }
                        )
                }.foregroundColor(Color.blue)
            }

            //Image(item.image)
        }.frame(maxWidth: .infinity) // to have container centered
        .buttonStyle(ProductFamilyRowStyle())
    }
}
