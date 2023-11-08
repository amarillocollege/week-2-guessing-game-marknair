//
//  ContentView.swift
//  Guessing Game
//
//  Created by YOUR NAME HERE
//

import SwiftUI

struct ContentView: View {
    
    var birds = ["Blue Pita", "Chatham Albatross", "Dunlin", "Eurasian Griffon", "Great Gray Owl", "Inca Tern", "Piping Plover", "Zitting Cristicola"]
    
    var body: some View {
        VStack {
            Image(systemName: "questionmark.app.fill")
                .imageScale(.large)
                .foregroundColor(.mint)
            Text("The Guessing Game Template")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
