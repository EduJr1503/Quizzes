//
//  ViewController.swift
//  Quizzler
//
//  Created by Eduardo Junior on 25/07/2022.
//


import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
