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

struct MainPage: View {
    var body: some View {
        
        NavigationView {
            ZStack{
                Image("BackgroundMainPage")
                    .resizable()
                    .ignoresSafeArea()
                HStack{
                    VStack {
                        Button( action:{
                            buttonPressed()
                        }){
                            Image("Button2")
                                .resizable()
                        }
                    } .frame(width: 100, height: 100, alignment: .topTrailing)
                        .offset(x: -580, y:-470)
                }
                
                ZStack {
                    VStack{
                        Button( action:{
                            buttonPressed()
                        }){
                            Image("DrumKids")
                                .resizable()
                        }
                    }.frame(width: 400, height: 500)
                        .offset(x: -500, y: 120)
                    
                    VStack{
                        Button( action:{
                            buttonPressed()
                        }){
                            Image("SaxophoneKids")
                                .resizable()
                        }
                    }.frame(width: 400, height: 500)
                        .offset(x: -210, y:100)
                    
                    VStack{
                        Button( action:{
                            buttonPressed()
                        }){
                            Image("GuitarKids")
                                .resizable()
                        }
                    }.frame(width: 400, height: 480)
                        .offset(x: 40, y:80)
                    
                    VStack{
                        Button( action:{
                            buttonPressed()
                        }){
                            Image("PianoKids")
                                .resizable()
                        }.frame(width: 450, height: 600)
                            .offset(x: 250, y:80)
                    }
                    
                    VStack{
                        Button( action:{
                            buttonPressed()
                        }){
                            Image("ViolinKids")
                                .resizable()
                        }
                    }.frame(width: 350, height: 500)
                        .offset(x: 440, y:130)
                }
                
            }
            
        }.navigationViewStyle(.stack)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
