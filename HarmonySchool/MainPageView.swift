//
//  ContentView.swift
//  HarmonySchool
//
//  Created by Brenda Nathania Passandaran on 18/08/22.
//

import SwiftUI
import AVFoundation

//var audioPlayer : AVAudioPlayer?

//func playSound(sound: String, type: String){
//        if let path = Bundle.main.path(forResource: sound, ofType: type){
//            do {
//                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
//                audioPlayer?.play()
//                audioPlayer?.numberOfLoops = -1
//                print("main")
//            } catch {
//                print("wadaw")
//            }
//        }
//}


struct MainPageView: View {
    
    @State private var isActive: Bool = false
    var body: some View {
        
    NavigationView {
        ZStack{
            Image("mainview_background")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Image("mainview_title")
            }.offset(y: -350)
            
            VStack{
                NavigationLink(destination: ShowStageView(), isActive: self.$isActive) {
                    Text("")
                }
                Button(action:{
                    self.isActive = true
                    //audioPlayer?.stop()
                    
                    
                }) {
                    Image("mainview_play")
                }
                    
                
                }
                  //.offset(y: 0)
            
            HStack{
                Image("mainview_cowok")
            }.offset(x: -300, y: 150)
            
            HStack{
                Image("mainview_cewek")
            }.offset(x: 350, y: 150)
            
            }
        
            } .navigationViewStyle(.stack)
            .navigationBarHidden(true)
//            .onAppear {
//                playSound(sound: "introsound", type:"mp3")
//            }
            
        
        }
    }
    
struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


