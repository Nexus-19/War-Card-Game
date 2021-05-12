//
//  ContentView.swift
//  War Card Game
//
//  Created by SOUMYATTAM DEY on 27/04/21.
//

import SwiftUI

struct ContentView: View {
    
    //Defined as State Properties
    @State private var playerCard="back"
    @State private var cpuCard="back"
    @State private var playerScore=0
    @State private var cpuScore=0
    
    var body: some View {
        ZStack{
            Image("Background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    // Generating random cards from card2 to card14
                    let playerRand=Int.random(in: 2...14)
                    let cpuRand=Int.random(in: 2...14)
                    
                    //Update Cards
                    playerCard="card"+String(playerRand)
                    cpuCard="card"+String(cpuRand)
                    
                    //Update Score
                    if playerRand>cpuRand {
                        playerScore+=1
                    }
                    else if playerRand<cpuRand {
                        cpuScore+=1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding()
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .padding(.all)
                    }
                    Spacer()
                }
                Spacer()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
