//
//  ContentView.swift
//  WarCardGame
//
//  Created by Sarowar H. Mishkat on 26/2/20.
//  Copyright © 2020 Sarowar H. Mishkat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 2
    @State private var randNum2 = 2
    
    @State private var score1 = 0
    @State private var score2 = 0
    var body: some View {
        
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
                        VStack {
                            Spacer()
                            Image("logo")
                            Spacer()
                            
                        HStack{
                                
                                Image("card"+String(randNum1))
                                Image("card"+String(randNum2))
                            }
                            
                            Spacer()
                            Button(action: {
                                //randomize the state properties
                                
                                self.randNum1 = Int.random(in: 2...14)
                                self.randNum2 = Int.random(in: 2...14)
                                
                                //update score
                                
                                if self.randNum1 > self.randNum2{
                                    self.score1 += 1
                                }else if self.randNum1 < self.randNum2 {
                                    self.score2 += 1
                                }
                                
                                
                                
                            }) {
                                //Test("Button")
                                Image("dealbutton")
                                    .renderingMode(.original)
                            }
                            Spacer()
                            
                            HStack{
                                VStack{
                                    Text("Player")
                                        .bold()
                                        .padding(.bottom, 20)
                                    Text(String(score1))
                                }
                                .padding(.leading, 20)
                                .foregroundColor(.white)
                                
                                Spacer()
                                    VStack{
                                        Text("CPU")
                                        .bold()
                                        .padding(.bottom, 20)
                                        Text(String(score2))
                                }
                                .padding(.trailing, 20)
                                .foregroundColor(.white)
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
