//
//  ImageCard.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import SwiftUI

struct ImageCard: View {
    let imageName: String
    let frogName: String
    var body: some View {
        GeometryReader { geometry in
        ZStack(alignment: .bottomLeading) {
            Image(self.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width, height: geometry.size.height)
            BlurView()
                .frame(width: geometry.size.width, height: 42)
            Text(self.frogName)
                .font(.system(size: 32))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 8))
            }
        }
    .cornerRadius(12)
    }
}

struct ImageCard_Previews: PreviewProvider {
    static var previews: some View {
        ImageCard(imageName: "red-eyed-tree-frog", frogName: "red eyed tree frog")
        .frame(height: 240)
    }
}
