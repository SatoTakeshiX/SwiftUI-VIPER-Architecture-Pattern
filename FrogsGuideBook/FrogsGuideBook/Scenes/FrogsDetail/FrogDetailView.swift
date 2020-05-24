//
//  FrogDetailView.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/24.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

struct FrogDetailView: View {
    @ObservedObject var presenter: FrogDetailPresenter
    var body: some View {
        List {
            HStack(alignment: .center) {
                Spacer()
                Image(self.presenter.frog.imageName)
                Spacer()
            }
            Section(header: Text("Info")) {
                HStack {
                    Text("location")
                    .frame(width: 70, alignment: .leading)
                    Text(self.presenter.frog.location)
                }
            }
            
            Section(header: Text("Feature")) {
                self.presenter.makeAskTheProfessorButton()
            }
        }
        .alert(isPresented: $presenter.isShowError, content: presenter.alertBuilder)
        .navigationBarTitle(Text(self.presenter.frog.name), displayMode: .inline)
    }
}

struct FrogDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let frog = mockFrogs[0]
        return NavigationView{
            FrogDetailView(presenter: FrogDetailPresenter(frog: frog))
        }
    }
}
