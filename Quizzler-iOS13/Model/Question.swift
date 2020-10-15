//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Adrián godoy martinez on 27/01/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let options: [String]
    let correctAnswer: String
    
    init(q: String, o: [String], ca: String) {
        text = q
        options = o
        correctAnswer = ca
    }
}
