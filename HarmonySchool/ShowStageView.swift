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
                    
         
                    //DRUM2
                    VStack{
                        NavigationLink(destination: ViolinPageView(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_drum")
                        }
                            
                        
                        }
                    .position(x: 150, y: 550)

                    //TROMPET2
                    VStack{
                        NavigationLink(destination: TrumpetPage(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_trompet")
                        }
                            
                        
                        }
                    .position(x: 400, y: 550)
                    
                    //GITAR2
                    VStack{
                        NavigationLink(destination: GuitarPageView(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_gitar")
                        }
                            
                        
                        }
                    .position(x: 650, y: 550)
                    
                    
                    //KEYBOARD2
                    VStack{
                        NavigationLink(destination: PianoPAge(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_keyboard")
                        }
                            
                        
                        }
                    .position(x: 900, y: 530)

                    //VIOLIN2
                    VStack{
                        NavigationLink(destination: ViolinPageView(), isActive: self.$isActive) {
                            Text("")
                        }
                        Button(action:{
                            self.isActive = true
                            //audioPlayer?.stop()
                            
                            
                        }) {
                            Image("showstage_violin")
                        }
                            
                        
                        }
                    .position(x: 1180, y: 550)
                    
                    
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
    }
}

struct ShowStageView_Previews: PreviewProvider {
    static var previews: some View {
        ShowStageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

