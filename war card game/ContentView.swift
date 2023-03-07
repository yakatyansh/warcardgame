//
//  ContentView.swift
//  war card game
//
//  Created by Yash Katyan on 3/6/23.
//

import SwiftUI

struct ContentView: View {
    
    var playercard = "card6"
    var cpucard = "card3"
    
    var playerscore = 0
    var cpuscore = 0
    
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
        print("Deal Cards")
    }
    
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

