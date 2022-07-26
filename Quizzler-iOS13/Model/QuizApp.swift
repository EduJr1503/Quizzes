//
//  QuizApp.swift
//  Quizzler-iOS13
//
//  Created by Eduardo Junior on 25/07/22.
//

import Foundation

struct QuizApp {
    // Questions quiz
    let quiz = [
        Question(q: "Descer morros com o carro no ponto morto economiza combustível.", a: "False"),
        Question(q: "Na estrada é mais econômico andar com o ar condicionado ligado do que com os vidros abertos.", a: "True"),
        Question(q: "É necessário trocar os discos de freio sempre que for trocar as pastilhas.", a: "False"),
        Question(q: "O Renault Sandero RS é preparado pela Renault Sport.", a: "True"),
        Question(q: "O Fusca é um carro da Volkswagen.", a: "True"),
        Question(q: "A marca Subaru foi criada na Alemanha.", a: "False"),
        Question(q: "O Honda Civic Si 2008 possui um motor 2.0 aspirado.", a: "True"),
        Question(q: "A Audi foi objeto de propaganda em Iron Man.", a: "True"),
        Question(q: "O Volkswagen Gol foi lançado em 1980.", a: "True"),
        Question(q: "Ferrucio Lamborghini era dono de uma fábrica de tratores.", a: "True"),
        Question(q: "A marca Mini foi criada originalmente na Ásia.", a: "False"),
        Question(q: "A McLaren Senna foi criada em tributo ao Ayrton Senna.", a: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
        
    }
}
