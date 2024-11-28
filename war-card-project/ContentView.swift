//
//  ContentView.swift
//  war-card-project
//
//  Created by sanchita lachke on 27/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card3"
    @State private var cpuCard = "card5"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                Button(action: {
                    //Generate random numbers between 2 and 14
                    let playerRandomNum = Int.random(in: 2...14)
                    let cpuRandomNum = Int.random(in: 2...14)
                    
                    //Update cards
                    playerCard = "card" + String(playerRandomNum)
                    cpuCard = "card" + String(cpuRandomNum)
                    
                    //Update scores
                    if playerRandomNum > cpuRandomNum {
                        playerScore += 1
                    }else if cpuRandomNum > playerRandomNum {
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
