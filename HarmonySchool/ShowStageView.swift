//
//  ShowStageView.swift
//  HarmonySchool
//
//  Created by Brenda Nathania Passandaran on 18/08/22.
//

import SwiftUI
import AVFoundation

//var backgroundSound : AVAudioPlayer?
//
//func playSoundBackground (sound: String, type: String){
//        if let path = Bundle.main.path(forResource: sound, ofType: type){
//            do {
//                backgroundSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
//                backgroundSound?.play()
//                backgroundSound?.numberOfLoops = -1
//                backgroundSound?.setVolume(0.1, fadeDuration: -1)
//                print("main")
//            } catch {
//                print("wadaw")
//            }
//        }
//}


struct ShowStageView: View{
    
    @State private var isContent1Active = false
    @State private var isContent2Active = false
    
    func buttonPressed(){
        print("button pressed")

    }

    @State private var swingAngle = -5
    @State private var move = false
    @State private var swingingdrum = false
    @State private var swingingtrompet = false
    @State private var swinginggitar = false
    @State private var swingingkeyboard = false
    @State private var swingingviolin = false
    
    @State private var isActive: Bool = false
    
    var body: some View{
//        ShowStageView()
        
        NavigationView{
            ZStack{
            Image("BACKGROUND_PANGGUNG")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                
                ZStack{
                    
//                    //DRUM
//                    VStack {
//                        Button( action:{
//                            buttonPressed()
////                            playSoundDrum(sound: "Drum", type:"mp3")
//                            swingingdrum.toggle()
//                        }) {
//                        Image("showstage_drum")
//                            .resizable()
//                            .scaleEffect(0.6)
////                            .rotationEffect(.degrees(swingingdrum ? -10 : 10), anchor: swingingdrum ? .bottomLeading : .bottomTrailing)
////                            .animation(.easeInOut(duration: 1).repeatCount(swingingdrum ? 30 : 0, autoreverses: true), value: swingingdrum)
//                        }
//                    }   .frame(width: 350, height: 700)
//                        .offset(x: -500, y: 100)
                    
                    
                    //DRUM2
                    VStack{
                        NavigationLink(destination: DrumPageView(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_drum")
                        }
                            
                        
                        }.frame(width: 350, height: 700)
                        .offset(x: -500, y: 100)
                    
//                    //TROMPET
//                    VStack {
//                        Button( action:{
//                            buttonPressed()
////                            playSoundDrum(sound: "Drum", type:"mp3")
//                            swingingtrompet.toggle()
//                        }) {
//                        Image("showstage_trompet")
//                            .resizable()
//                            .scaleEffect(0.6)
////                            .rotationEffect(.degrees(swingingtrompet ? -10 : 10), anchor: swingingtrompet ? .bottomLeading : .bottomTrailing)
////                            .animation(.easeInOut(duration: 1).repeatCount(swingingtrompet ? 30 : 0, autoreverses: true), value: swingingtrompet)
//                        }
//                    }   .frame(width: 350, height: 700)
//                        .offset(x: -270, y: 120)
                    
                    //TROMPET2
                    //DRUM2
                    VStack{
                        NavigationLink(destination: DrumPageView(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_trompet")
                        }
                            
                        
                        }.frame(width: 350, height: 700)
                        .offset(x: -270, y: 120)
                    
                    //GITAR
//                    VStack {
//                        Button( action:{
//                            buttonPressed()
////                            playSoundDrum(sound: "Drum", type:"mp3")
//                            swinginggitar.toggle()
//                        }) {
//                        Image("showstage_gitar")
//                            .resizable()
//                            .scaleEffect(0.6)
////                            .rotationEffect(.degrees(swinginggitar ? -10 : 10), anchor: swinginggitar ? .bottomLeading : .bottomTrailing)
////                            .animation(.easeInOut(duration: 1).repeatCount(swinginggitar ? 30 : 0, autoreverses: true), value: swinginggitar)
//                        }
//                    }   .frame(width: 600, height: 800)
//                        .offset(x: -50, y: 150)
                    
                    //GITAR2
                    VStack{
                        NavigationLink(destination: DrumPageView(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_gitar")
                        }
                            
                        
                        }.frame(width: 600, height: 800)
                        .offset(x: -50, y: 150)
                    
                    
                    
                    //KEYBOARD
//                    VStack {
//                        Button( action:{
//                            buttonPressed()
////                            playSoundDrum(sound: "Drum", type:"mp3")
//                            swingingkeyboard.toggle()
//                        }) {
//                        Image("showstage_keyboard")
//                            .resizable()
//                            .scaleEffect(0.6)
////                            .rotationEffect(.degrees(swingingkeyboard ? -10 : 10), anchor: swingingkeyboard ? .bottomLeading : .bottomTrailing)
////                            .animation(.easeInOut(duration: 1).repeatCount(swingingkeyboard ? 30 : 0, autoreverses: true), value: swingingkeyboard)
//                        }
//                    }   .frame(width: 700, height: 800)
//                        .offset(x: 150, y: 150)
                    
                    
                    //KEYBOARD2
                    VStack{
                        NavigationLink(destination: DrumPageView(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_keyboard")
                        }
                            
                        
                        }.frame(width: 700, height: 800)
                        .offset(x: 150, y: 150)
                    
                    //VIOLIN
//                    VStack {
//                        Button( action:{
//                            buttonPressed()
////                            playSoundDrum(sound: "Drum", type:"mp3")
//                            swingingviolin.toggle()
//                        }) {
//                        Image("showstage_violin")
//                            .resizable()
//                            .scaleEffect(0.6)
////                            .rotationEffect(.degrees(swingingviolin ? -10 : 10), anchor: swingingviolin ? .bottomLeading : .bottomTrailing)
////                            .animation(.easeInOut(duration: 1).repeatCount(swingingviolin ? 30 : 0, autoreverses: true), value: swingingviolin)
//                        }
//                    }   .frame(width: 600, height: 700)
//                        .offset(x: 350, y: 150)
                    
                    
                    //VIOLIN2
                    VStack{
                        NavigationLink(destination: DrumPageView(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_violin")
                        }
                            
                        
                        } .frame(width: 600, height: 700)
                        .offset(x: 350, y: 150)
                    
                    
                    
                    //tombol danger masih belom
                    VStack{
                    NavigationLink(destination: MainPageView(), isActive: self.$isContent1Active) {
                            Text("")
                    }
                    Button(action:{
                        self.isContent1Active = true
//                        backgroundSound?.stop()
                    }) {
                        Image("showstage_danger")
                        .resizable()
                        }
                    } .frame(width: 120, height: 130)
                          .offset(x: -550, y: -450)
                }
            }
            
        }.navigationBarHidden(true)
            .navigationViewStyle(.stack)
//            .onAppear {
//                playSoundBackground(sound: "bgm room", type:"mp3")
//            }
    }
}

struct ShowStageView_Previews: PreviewProvider {
    static var previews: some View {
        ShowStageView()
        MainPageView()
//        BackyardPage()
//            .previewInterfaceOrientation(.landscapeRight)
    }
}

