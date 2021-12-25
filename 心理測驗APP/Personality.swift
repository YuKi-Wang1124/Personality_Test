//
//  Personality.swift
//  心理測驗APP
//
//  Created by 王昱淇 on 2021/12/24.
//

import Foundation


struct Personality {
    var name: String
    var personalityName: String
    var introduction1: String
    var introduction2: String
    var introduction3: String
    var introduction4: String
    var advantage: String
    var shortcoming: String
    var celebrity: String
    init(name: String, personalityName: String, introduction1: String, introduction2: String, introduction3: String, introduction4: String, advantage: String, shortcoming: String, celebrity: String) {
        self.name = name
        self.personalityName = personalityName
        self.introduction1 = introduction1
        self.introduction2 = introduction2
        self.introduction3 = introduction3
        self.introduction4 = introduction4
        self.advantage = advantage
        self.shortcoming = shortcoming
        self.celebrity = celebrity
    }
}
 
struct Question {
    let question: String
    let option1: String
    let option2: String
}







