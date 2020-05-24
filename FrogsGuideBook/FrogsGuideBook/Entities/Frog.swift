//
//  Frog.swift
//  FrogsGuideBook
//
//  Created by satoutakeshi on 2020/05/23.
//  Copyright © 2020 satoutakeshi. All rights reserved.
//

import Foundation

struct Frog {
    let id = UUID()
    let imageName: String
    let name: String
    let location: String
}

let mockFrogs: [Frog] = [
    Frog(imageName: "blue-poison-dart-frog", name: "blue poison dart frog", location: "Brazil"),
    Frog(imageName: "red-eyed-tree-frog", name: "red eyed tree frog", location: "Mexico"),
    Frog(imageName: "toad", name: "toad", location: "Anywhere")
]
