//
//  LoginView.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var inputEmail: String = ""
    @State var inputPassword: String = ""
    var body: some View {
        ScrollView {
            Image("frog-logo")
                .renderingMode(.template)
                .foregroundColor(.green)
            Text("Frogs Guid Book")
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text("Account Name")
                TextField("input your e-mail", text: $inputEmail)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()

            VStack(alignment: .leading) {
                Text("Password")
                TextField("input your password", text: $inputPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            }
            .padding()

            Button(action: {

            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 70)
                    .padding()
                        .foregroundColor(.green)
                    Text("Login")
                        .font(.title)
                        .foregroundColor(.white)
                }
            })
        }
        .padding(.top)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
