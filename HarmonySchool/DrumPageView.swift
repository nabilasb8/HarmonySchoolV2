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
    @State private var urutanyanglagiaktif = 0
    
    let notesArray = [94,91,92,92,92,92,92,92,92,94,91,92,92,92,92,92,92,92,94,91,92,92,92,92,92,92,92,92,91,94,91,92,92,92,92,92,92,92,94,91,92,92,92,92,92,92,92,94,91,92,92,92,92,92,92,92,92,91]
    
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
            
            HStack{
                VStack{
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
                }
                
                .frame(width: 90, height: 100)
                      .position(x: 100, y: -20)

                
                
    //            tombol danger drum masih belom
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
                }
                .frame(width: 90, height: 100)
                      .position(x: 100, y: -350)
                }
                
                            ZStack{
                                Image("drumpage_coloum")
                                    .position(x: -200, y: 150)
                                
                                Image("drumpage_title")
                                    .position(x: -300, y: 130)
                                
                                Image("drumpage_heytayo")
                                    .position(x: -290, y: 180)
                                
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
                                }.position(x: 70, y: 150)
                                
                                
                                Image("drumpage_cowok")
                                    .position(x: 350, y: 350)
                                
                                
                                Image("drumpage_gendang")
                                    .position(x: 0, y: 580)
                                                ZStack{
                                                //TUTS1
                                                Button(action:{
                                                   urutanyanglagiaktif += 1
                                                })  {
                                                    Image("tuts1")
                                                    .resizable()
                                                }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(90)).position(x: 0, y: 430)
                                
                                                //TUTS2
                                                Button(action:{
                                                   urutanyanglagiaktif += 1
                                                })  {
                                                    Image("tuts2")
                                                    .resizable()
                                                }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(-25)).position(x: 105, y: 475)
                                
                                
                                                //TUTS3
                                                Button(action:{
                                                   urutanyanglagiaktif += 1
                                                })  {
                                                    Image("tuts3")
                                                    .resizable()
                                                }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(-0)).position(x: 150, y: 580)
                                
                                
                                                //TUTS4
                                                Button(action:{
                                                   urutanyanglagiaktif += 1
                                                })  {
                                                    Image("tuts4")
                                                    .resizable()
                                                }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(25)).position(x: 110, y: 690)
                                
                                
                                                //TUTS5
                                                Button(action:{
                                                   urutanyanglagiaktif += 1
                                                })  {
                                                    Image("tuts5")
                                                    .resizable()
                                                }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(100)).position(x: 7, y: 730)
                                                    
                                                    
                                                //TUTS6
                                                    Button(action:{
                                                       urutanyanglagiaktif += 1
                                                    })  {
                                                        Image("tuts6")
                                                        .resizable()
                                                    }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(-20)).position(x: -100, y: 690)
                                                    
                                                    
                                                //TUTS7
                                                    Button(action:{
                                                       urutanyanglagiaktif += 1
                                                    })  {
                                                        Image("tuts7")
                                                        .resizable()
                                                    }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(0)).position(x: -150, y: 580)
                                                    
                                                //TUTS8
                                                        Button(action:{
                                                           urutanyanglagiaktif += 1
                                                        })  {
                                                            Image("tuts8")
                                                            .resizable()
                                                        }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(25)).position(x: -105, y: 475)
                                                    
                                                }
                                
                            }
                
                

                
            }
            
            
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
            .previewInterfaceOrientation(.landscapeRight)
        MainPageView()
            //.previewInterfaceOrientation(.landscapeLeft)
        ShowStageView()
            //.previewInterfaceOrientation(.landscapeLeft)
//        BackyardPage()
//            .previewInterfaceOrientation(.landscapeRight)
    }
}
