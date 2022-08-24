//
//  MainPage.swift
//  HarmonySchool
//
//  Created by Hastomi Riduan Munthe on 22/08/22.
//

import SwiftUI


struct PianoPage: View {
    
    func button1Pressed(){
        print("button pressed")

        for (index, item) in keyColors.enumerated(){
            keyColors[index] = .random(in: 0..<2)
        }
    }
    
    @State var keyColors: [Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    
    let whiteKey : [Color] = [.blue, .white]
    let blackKey : [Color] = [.black, .white]
    
    var body: some View {
        ZStack{
            
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Button( action:{
                    button1Pressed()
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
                            button1Pressed()
                        }){
                            Image("Button2")
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
                        button1Pressed()
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
//                Image("Piano")
//                    .resizable()
            }.frame(width: 1200, height: 800)
                .offset(x: -0, y:40)
            
            HStack{
                
                HStack {
                    //1
                    Button( action:{
                        button1Pressed()
                        
                    }){
                        Image("piano1")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[0]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 230, y:250)
                    
                    //2
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano5")
                            .resizable()
                            .colorMultiply(blackKey[keyColors[1]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 190, y:250)
                    //3
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano2")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[2]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 165, y:250)
                    
                    //4
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano5")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[3]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 140, y:250)
                    
                    //5
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano2")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[4]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 110, y:250)
                    
                    //6
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano5")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[5]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 85, y:250)
                    
                    //7
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano3")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[6]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 50, y:250)
                }
                
                HStack {
                    //8
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano4")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[7]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 60, y:250)
                    
                    //9
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano5")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[8]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 30, y:250)
                    
                    //10
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano2")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[9]])
                    } .frame(width: 70, height: 230)
                        .offset(x: 0, y:250)
                    
                    //11
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano5")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[10]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -30, y:250)
                    
                    //12
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano3")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[11]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -70, y:250)
                }
                
                HStack {
                    //13
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano4")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[12]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -60, y:250)
                    
                    //14
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano5")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[13]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -90, y:250)
                    
                    //15
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano2")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[14]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -120, y:250)
                    
                    //16
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano5")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[15]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -150, y:250)
                    
                    //17
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano2")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[16]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -185, y:250)
                    
                    //18
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano5")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[17]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -210, y:250)
                    
                    //19
                    Button( action:{
                        button1Pressed()
                    }){
                        Image("piano6")
                            .resizable()
                            .colorMultiply(whiteKey[keyColors[18]])
                    } .frame(width: 70, height: 230)
                        .offset(x: -250, y:250)
                }
                
            }
            
        }
    }
    
    struct PianoPage_Previews: PreviewProvider {
        static var previews: some View {
            PianoPage()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
