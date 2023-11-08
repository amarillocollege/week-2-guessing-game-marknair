//
//  ContentView.swift
//  Guessing Game
//
//  Created by YOUR NAME HERE
//

import SwiftUI

struct ContentView: View {
    
    @State private var birds = ["Blue Pita", "Chatham Albatross", "Dunlin", "Eurasian Griffon", "Great Gray Owl", "Inca Tern", "Piping Plover", "Zitting Cristicola"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    
    var body: some View {
        
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text("Which bird is the")
                        .foregroundStyle(.white)
                    Text(birds[correctAnswer])
                        .foregroundStyle(.white)
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(birds[number])
                        }
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestions)
        } message: {
            Text("Your score is ???")
        }
    }
    
    //MARK: Methods
    
    func askQuestions() {
        birds.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
}

#Preview {
    ContentView()
}
