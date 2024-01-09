//
//  ContentView.swift
//  Quiz Chronicle
//
//  Created by David Sugden on 29/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    let questions: [Question] = [
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
                correctAnswerIndex: 0),
        ]
    
    let mainColor = Color(red: 80/255, green: 140/255, blue: 200/255)
    let accentColor = Color(red: 200/255, green: 80/255, blue: 140/255)
    
    @State private var currentQuestionIndex = 0
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("\(currentQuestionIndex + 1) / \(questions.count)")
                        .font(.callout)
                        .multilineTextAlignment(.leading)
                        .padding()
                Text(questions[currentQuestionIndex].questionText)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding()
                Spacer()
                
                Image("JRRTolkein")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        print("Tapped on Choice 1")
                        moveToNextQuestion()
                    }, label: {
                        ChoiceTextView(choiceText: questions[currentQuestionIndex].possibleAnswers[0])
                    })
                    Spacer()
                    
                    Button(action: {
                        print("Tapped on Choice 2")
                        moveToNextQuestion()
                    }, label: {
                        ChoiceTextView(choiceText: questions[currentQuestionIndex].possibleAnswers[1])
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        print("Tapped on Choice 3")
                        moveToNextQuestion()
                    }, label: {
                        ChoiceTextView(choiceText: questions[currentQuestionIndex].possibleAnswers[2])
                    })
                    
                    Spacer()
                }
            }
        }
    }
    
    func moveToNextQuestion() {
            if currentQuestionIndex < questions.count - 1 {
                currentQuestionIndex += 1
            } else {
                // Handle end of questions, e.g., show a summary or restart the quiz
                // For now, let's reset to the first question
                currentQuestionIndex = 0
            }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
