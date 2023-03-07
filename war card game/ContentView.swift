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
            VStack{
                Image("logo")
                    .padding()
                HStack{
                    Image("card3")
                        .padding()
                    Image("card3")
                    
                }
                Image("button")
                    .padding()
                 HStack{
                    VStack{
                        Text("Player")
                            .padding()
                            .foregroundColor(.white)
                        Text("0")
                            .foregroundColor(.white)
                    }
                    VStack{
                        Text("CPU")
                            .padding().foregroundColor(.white)
                        Text("0")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
