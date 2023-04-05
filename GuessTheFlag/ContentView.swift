//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Edmond Podlegaev on 04.04.2023.
//

import SwiftUI

struct ContentView: View {

    @State private var showingScore = false
    @State private var gameOver = false
    
    @State private var scoreTitle = ""
    @State private var playerScore = 0
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var countOfQuestions = 8
    @State private var countOfRightAnswers = 0
    @State private var countOfAnswers = 0
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.2), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.semibold))
                        Text(countries[correctAnswer])
                            .foregroundColor(.white)
                            .font(.largeTitle.weight(.heavy))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                Spacer()
                Spacer()
                
                Text("Score: \(playerScore)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Text("\(countOfAnswers) / \(countOfQuestions)")
                    .foregroundColor(.white)
                    .font(.subheadline.bold())
                
                Spacer()
            }
            .padding(25)
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(playerScore)")
        }
        
        .alert("Game Over!", isPresented: $gameOver) {
            Button("Play again", action: reset)
        } message: {
            Text("Your score is \(playerScore)")
            Text("You answered on \(countOfRightAnswers) questions right from \(countOfQuestions)!")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            playerScore += 10
            countOfAnswers += 1
            countOfRightAnswers += 1
        } else {
            scoreTitle = "Wrong! It's \(countries[number])"
            playerScore -= 10
            countOfAnswers += 1
            if playerScore <= 0 {
                playerScore = 0
            }
        }
        
        showingScore = true
        
        if countOfAnswers == countOfQuestions {
            gameOver = true
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func reset() {
        playerScore = 0
        countOfRightAnswers = 0
        countOfAnswers = 0
        gameOver = false
        showingScore = false
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
