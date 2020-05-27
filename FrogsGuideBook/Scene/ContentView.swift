//
//  ContentView.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/22.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("detail")) {
                Text("main")
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("this is home view")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
