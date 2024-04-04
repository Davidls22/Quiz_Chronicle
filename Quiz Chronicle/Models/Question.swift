//
//  Question.swift
//  Quiz Chronicle
//
//  Created by David Sugden on 09/01/2024.
//

import Foundation

struct Question: Hashable{
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
            Question(
                questionText: "Who is the Author of 'The Lord of the Rings'?",
                possibleAnswers: ["JK Rowling", "JRR Tolkein", "George RR Martin"],
                correctAnswerIndex: 1),
            Question(
                questionText: "What is the name of the main character in 'The Hobbit'?",
                possibleAnswers: ["Frodo Baggins", "Aragorn", "Bilbo Baggins"],
                correctAnswerIndex: 2),
            Question(
                questionText: "In 'The Fellowship of the Ring', who is the rightful heir to the throne of Gondor?",
                possibleAnswers: ["Frodo Baggins", "Aragorn", "Legolas"],
                correctAnswerIndex: 1),
            Question(
                questionText: "Who said the famous line 'You shall not pass!' in 'The Fellowship of the Ring'?",
                possibleAnswers: ["Aragorn", "Gandalf", "Legolas"],
                correctAnswerIndex: 1),
            Question(
                questionText: "What creature does Gollum transform into after obtaining the One Ring?",
                possibleAnswers: ["Orc", "Uruk-hai", "Smeagol"],
                correctAnswerIndex: 2),
            Question(
                questionText: "What is the capital city of Rohan in 'The Lord of the Rings'?",
                possibleAnswers: ["Minas Tirith", "Edoras", "Gondor"],
                correctAnswerIndex: 1),
            Question(
                questionText: "What is the name of Frodo's sword?",
                possibleAnswers: ["Andúril", "Glamdring", "Sting"],
                correctAnswerIndex: 2),
            Question(
                questionText: "Which creature does Samwise Gamgee call 'the big, slimy, crawly thing'?",
                possibleAnswers: ["Shelob", "Balrog", "Gollum"],
                correctAnswerIndex: 0)
        ]

}
