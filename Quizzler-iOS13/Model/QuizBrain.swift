//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Adrián godoy martinez on 27/01/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
        let quiz = [
            Question(q: "Which is the largest organ in the human body?", o: ["Heart", "Skin", "Large Intestine"], ca: "Skin"),
            Question(q: "Five dollars is worth how many nickels?", o: ["25", "50", "100"], ca: "100"),
            Question(q: "What do the letters in the GMT time zone stand for?", o: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], ca: "Greenwich Mean Time"),
            Question(q: "What is the French word for 'hat'?", o: ["Chapeau", "Écharpe", "Bonnet"], ca: "Chapeau"),
            Question(q: "In past times, what would a gentleman keep in his fob pocket?", o: ["Notebook", "Handkerchief", "Watch"], ca: "Watch"),
            Question(q: "How would one say goodbye in Spanish?", o: ["Au Revoir", "Adiós", "Salir"], ca: "Adiós"),
            Question(q: "Which of these colours is NOT featured in the logo for Google?", o: ["Green", "Orange", "Blue"], ca: "Orange"),
            Question(q: "What alcoholic drink is made from molasses?", o: ["Rum", "Whisky", "Gin"], ca: "Rum"),
            Question(q: "What type of animal was Harambe?", o: ["Panda", "Gorilla", "Crocodile"], ca: "Gorilla"),
            Question(q: "Where is Tasmania located?", o: ["Indonesia", "Australia", "Scotland"], ca: "Australia")

        
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getQuestionOptions() -> [String] {
        return quiz[questionNumber].options
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) + 1 / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }

}
