//
//  Question.swift
//  Quizzler
//
//  Created by TrendPower on 2023/8/11.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
