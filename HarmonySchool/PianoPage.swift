//
//  ContentView.swift
//  HarmonySchool
//
//  Created by Nabila on 18/08/22.
//

import SwiftUI

func buttonPressed(){
    print("button pressed")
}
struct PianoPAge: View {
    var body: some View {
        
        NavigationView {
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Button( action:{
                        buttonPressed()
                    }){
                        Image("HomeButton")
                            .resizable()
                    }
                } .frame(width: 100, height: 100, alignment: .topTrailing)
                    .offset(x: -580, y:-470)
                VStack{
                    HStack{
                        VStack{
                            Button( action:{
                                buttonPressed()
                            }){
                                Image("HomeButton")
                                    .resizable()
                            }
                        } .frame(width: 100, height: 100, alignment: .topTrailing)
                            .offset(x: -220, y:-360)
                        
                        HStack{
                            Image("PianoSong")
                                .resizable()
                                .frame(width: 500, height: 220)
                                .offset(x: -130, y:-320)
                        }
                        Button( action:{
                            buttonPressed()
                        }){
                            Image("ButtonPlay")
                                .resizable()
                        }.frame(width: 200, height: 200)
                            .offset(x: -260, y:-320)
                    }
                }
                
                VStack{
                    Image("PianoKids")
                        .resizable()
                }.frame(width: 800, height: 800)
                    .offset(x: 280, y:-180)
                
                VStack{
                    Image("Piano")
                        .resizable()
                }.frame(width: 1200, height: 800)
                    .offset(x: -0, y:40)
                
            }
            
        }.navigationViewStyle(.stack)
    }
}

struct PianoPage_Previews: PreviewProvider {
    static var previews: some View {
        PianoPAge()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
