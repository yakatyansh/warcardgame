//
//  ContentView.swift
//  war card game
//
//  Created by Yash Katyan on 3/6/23.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card3")
                    Spacer()
                    
                }
                Spacer()
                Image("button")
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                    
                            .foregroundColor(.white)
                        Text("0")
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .foregroundColor(.white)
                        Text("0")
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
