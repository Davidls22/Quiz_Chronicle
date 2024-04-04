//
//  QuizView.swift
//  Quiz Chronicle
//
//  Created by David Sugden on 29/12/2023.
//

import SwiftUI

struct QuizView: View {
    
    @State private var game = Game()
    @State private var isAnswerCorrect: Bool?
    @State private var mainColor = GameColor.main
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)")
                    .font(.callout)
                    .padding()
                Text(game.currentQuestion.questionText)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                HStack {
                    ForEach(0..<game.currentQuestion.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            isAnswerCorrect = answerIndex == game.currentQuestion.correctAnswerIndex
                            mainColor = isAnswerCorrect == true ? GameColor.correctGuess : GameColor.incorrectGuess
                            game.makeGuessForCurrentQuestion(atIndex: answerIndex)
                            game.updateGameStatus()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                mainColor = GameColor.main
                            }
                        }) {
                            Text(game.currentQuestion.possibleAnswers[answerIndex])
                                .padding()
                                .foregroundColor(.white)
                                .background(mainColor)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .foregroundColor(.white)
    }
    
    struct QuizView_Previews: PreviewProvider {
        static var previews: some View {
            QuizView()
        }
    }
}
