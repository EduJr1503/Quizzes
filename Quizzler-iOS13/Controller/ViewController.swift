//
//  ViewController.swift
//  Quizzler
//
//  Created by Eduardo Junior on 25/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizApp = QuizApp()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        updateUI()
    }

// True and False button action
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // true or false
        let userGotItRight = quizApp.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizApp.nextQuestion()
        
// Timer for true and false controls to remain green or red
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionLabel.text = quizApp.getQuestionText()
        progressBar.progress = quizApp.getProgress()
        scoreLabel.text = "Score: \(quizApp.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
}
