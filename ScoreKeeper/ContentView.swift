//
//  ContentView.swift
//  ScoreKeeper
//
//  Created by Scholar on 7/24/25.
//


//Object and Classes spicy practice
import SwiftUI

struct ContentView: View {
    @State private var players: [Player] = [Player(name: "babwa", score: 0), Player(name: "wioer", score: 0), Player(name: "khjwer", score: 0)] //how set default score 0?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .fontWeight(.bold)
                
            Grid { //grid view
                GridRow {
                    Text("Player")
                        .gridColumnAlignment(.leading) //align with below player names
                    Text("Score")
                }
                .font(.headline)
                
                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        Text("\(player.score)") //unlike Stepper (takes all available space, only takes space needed
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden() //Text view abv makes Stepper's label redundant -> hidden
                    }
                }
            }
            .padding(.vertical) // adds some vertical padding for Score Keeper title and + add Player button
            
            Button("Add Player", systemImage: "plus") {
                players.append(Player(name: "", score: 0)) //is this where i do default score = 0?
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
