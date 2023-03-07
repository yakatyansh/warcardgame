//
//  ContentView.swift
//  war card game
//
//  Created by Yash Katyan on 3/6/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playercard = "card6"
    @State var cpucard = "card3"
    
    @State var playerscore = 0
    @State var cpuscore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                    
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .padding(.bottom,10.0)
                            .font (. headline)
                        Text(String(playerscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom,10.0)
                            .font (. headline)
                        Text(String(cpuscore))
                            .font(.largeTitle )
                        
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        
        var pcvalue = Int.random(in: 2...14)
        var ccvalue = Int.random(in: 2...14)
        
        //Randomise player cards
        playercard = "card" + String(pcvalue)
        
        //Randomise CPU cards
        cpucard = "card" + String(ccvalue)
        
        //Update scores
        if pcvalue > ccvalue {
            
            playerscore += 1
            
        }
        
        else if ccvalue > pcvalue {
            
            cpuscore += 1
            
        }
        else {
            //Tie
            cpuscore += 1 
            playerscore += 1
            
        }
    }
    
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
