//
//  DrumPageView.swift
//  HarmonySchool
//
//  Created by Brenda Nathania Passandaran on 22/08/22.
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


struct DrumPageView: View {
    
    @State private var isContent1Active = false
    @State private var isContent2Active = false
    
    func buttonPressed(){
        print("button pressed")

    }
    
    @State private var isActive: Bool = false
    var body: some View {
        
    NavigationView {
        ZStack{
            Image("drumpage_background")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Image("drumpage_cowok")
            }.offset(x: 400, y: -150)
            
            VStack{
                Image("drumpage_title")
            }.offset(y: -350)
            

            HStack{
                Image("drumpage_coloum")
            }.offset(x: -200, y: -300)
            
            HStack{
                Image("drumpage_title")
            }.offset(x: -330, y: -320)
            
            HStack{
                Image("drumpage_heytayo")
            }.offset(x: -320, y: -270)
            
            HStack{
                Image("drumpage_drum")
            }.offset(x: -50, y: 150)
            
            
            //destinationnya blm
            HStack{
                NavigationLink(destination: ShowStageView(), isActive: self.$isActive) {
                    Text("")
                }
                Button(action:{
                    self.isActive = true
                    //audioPlayer?.stop()
                    
                    
                }) {
                    Image("drumpage_play")
                }
            }.offset(x: 80, y: -300)
            
            
            
            //tombol home masih belom
            VStack{
            NavigationLink(destination: ShowStageView(), isActive: self.$isContent1Active) {
                    Text("")
            }
            Button(action:{
                self.isContent1Active = true
//                        backgroundSound?.stop()
            }) {
                Image("drumpage_home")
                .resizable()
                }
            } .frame(width: 120, height: 130)
                  .offset(x: -550, y: -450)
            
            
            
            //tombol danger drum masih belom
            VStack{
            NavigationLink(destination: MainPageView(), isActive: self.$isContent1Active) {
                    Text("")
            }
            Button(action:{
                self.isContent1Active = true
//                        backgroundSound?.stop()
            }) {
                Image("drumpage_danger")
                .resizable()
                }
            } .frame(width: 120, height: 130)
                  .offset(x: -550, y: -320)
            
            
            }
        
            } .navigationViewStyle(.stack)
            .navigationBarHidden(true)
//            .onAppear {
//                playSound(sound: "introsound", type:"mp3")
//            }
            
        
        }
    }
    
struct DrumPageView_Previews: PreviewProvider {
    static var previews: some View {
        DrumPageView()
        MainPageView()
            //.previewInterfaceOrientation(.landscapeLeft)
        ShowStageView()
            //.previewInterfaceOrientation(.landscapeLeft)
//        BackyardPage()
//            .previewInterfaceOrientation(.landscapeRight)
    }
}
