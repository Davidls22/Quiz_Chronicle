//
//  ContentView.swift
//  Quiz Chronicle
//
//  Created by David Sugden on 29/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    let accentColor = Color(red: 200/255, green: 80/255, blue: 140/255)
    
    @State private var game = Game()
    @State private var isAnswerCorrect: Bool?
    @State var mainColor = Color(red: 80/255, green: 140/255, blue: 200/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(game.currentQuestion.questionText)
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
                    ForEach(0..<game.currentQuestion.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(game.currentQuestion.possibleAnswers[answerIndex])")
                            self.isAnswerCorrect = answerIndex == game.currentQuestion.correctAnswerIndex
                            self.mainColor = self.isAnswerCorrect != nil ? (self.isAnswerCorrect! ? Color.green : Color.red) : Color.blue
                            self.game.makeGuessForCurrentQuestion(atIndex: answerIndex)
                            self.game.updateGameStatus()
                        }) {
                            ChoiceTextView(choiceText: game.currentQuestion.possibleAnswers[answerIndex])
                                .background(self.mainColor)
                                .cornerRadius(10)
                        }
                        .disabled(self.isAnswerCorrect != nil)
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
