////
////  DrumPageView.swift
////  HarmonySchool
////
////  Created by Brenda Nathania Passandaran on 22/08/22.
////
//
//import SwiftUI
//
//struct DrumPageView: View {
//    let circleColor = Color(.sRGB, red: 130/255, green: 89/255, blue: 89/255, opacity: 1.0)
//    let activeCircleColor = Color(.sRGB, red: 129/255, green: 128/255, blue: 255/255, opacity: 1.0)
//    @State private var isContent1Active = false
//    @State private var isContent2Active = false
//    @ObservedObject var viewModelDrum: DrumPageViewModel = DrumPageViewModel()
//    @State var presentingPopUpDrum: Bool = false
//    
//    func buttonPressed(){
//        print("button pressed")
//        
//    }
//    
//    @State private var isActive: Bool = false
//    var body: some View {
//        
//        NavigationView {
//            ZStack{
//                Image("drumpage_background")
//                    .resizable()
//                    .ignoresSafeArea()
//                
//                HStack{
//                    VStack{
//                        //tombol home masih belom
//                        VStack{
//                            NavigationLink(destination: ShowStageView(), isActive: self.$isContent1Active) {
//                                Text("")
//                            }
//                            Button(action:{
//                                self.isContent1Active = true
//                                //                        backgroundSound?.stop()
//                            }) {
//                                Image("drumpage_home")
//                                    .resizable()
//                            }
//                        }
//                        .frame(width: 90, height: 100)
//                        .position(x: 100, y: -20)
//                        
//                        
//                        VStack{
//                            NavigationLink(destination: MainPageView(), isActive: self.$isContent1Active) {
//                                Text("")
//                            }
//                            Button(action:{
//                                self.isContent1Active = true
//                                //                        backgroundSound?.stop()
//                            }) {
//                                Image("drumpage_danger")
//                                    .resizable()
//                            }
//                        }
//                        .frame(width: 90, height: 100)
//                        .position(x: 100, y: -350)
//                    }
//                    
//                    ZStack{
//                        Image("drumpage_coloum")
//                            .position(x: -200, y: 150)
//                        
//                        Image("drumpage_title")
//                            .position(x: -300, y: 130)
//                        
//                        Image("drumpage_heytayo")
//                            .position(x: -290, y: 180)
//                        
//                        //destinationnya blm
//                        HStack{
//                            NavigationLink(destination: ShowStageView(), isActive: self.$isActive) {
//                                Text("")
//                            }
//                            Button(action:{
//                                self.isActive = true
//                                //audioPlayer?.stop()
//                                
//                                
//                            }) {
//                                Image("drumpage_play")
//                            }
//                        }.position(x: 70, y: 150)
//                        
//                        
//                        Image("drumpage_cowok")
//                            .position(x: 350, y: 350)
//                        
//                        
//                        Image("drumpage_gendang")
//                            .position(x: 0, y: 580)
//                        
//                        ZStack{
//                            //TUTS1
//                            Image("tuts1")
//                                .resizable()
//                        }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(90)).position(x: 0, y: 430)
//                            .onTapGesture {
//                                self.onClickCircle(id: circle.id)
//                                
//                            }
//                        //TUTS2
//                        Image("tuts2")
//                            .resizable()
//                    }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(-25)).position(x: 105, y: 475)
//                        .onTapGesture {
//                            withAnimation(.easeInOut(duration: 0.5)) {
//                                
//                            }
//                            //TUTS3
//                            Image("tuts3")
//                                .resizable()
//                        }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(-0)).position(x: 150, y: 580)
//                        .onTapGesture {
//                            withAnimation(.easeInOut(duration: 0.5)) {
//                                
//                            }
//                            
//                            //TUTS4
//                            Image("tuts4")
//                                .resizable()
//                        }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(25)).position(x: 110, y: 690)
//                        .onTapGesture {
//                            withAnimation(.easeInOut(duration: 0.5)) {
//                                
//                            }
//                            //TUTS5
//                            Image("tuts5")
//                                .resizable()
//                        }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(100)).position(x: 7, y: 730)
//                        .onTapGesture {
//                            withAnimation(.easeInOut(duration: 0.5)) {
//                                
//                            }
//                            
//                            //TUTS6
//                            Image("tuts6")
//                                .resizable()
//                        }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(-20)).position(x: -100, y: 690)
//                        .onTapGesture {
//                            withAnimation(.easeInOut(duration: 0.5)) {
//                                
//                            }
//                            
//                            //TUTS7
//                            Image("tuts7")
//                                .resizable()
//                        }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(0)).position(x: -150, y: 580)
//                        .onTapGesture {
//                            withAnimation(.easeInOut(duration: 0.5)) {
//                                
//                            }
//                            
//                            //TUTS8
//                            Image("tuts8")
//                                .resizable()
//                        }.colorMultiply(.white).frame(width: 81.95, height: 106.82).rotationEffect(.degrees(25)).position(x: -105, y: 475)
//                        .onTapGesture {
//                            withAnimation(.easeInOut(duration: 0.5)) {
//                                
//                            }
//                            
//                            
//                        }
//                    
//                }
//                
//                
//                
//                
//            }
//            
//            
//        }
//        
//    }.navigationViewStyle(.stack)
//        .navigationBarHidden(true)
//}
//func onClickCircle(id: Int) {
//    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//        self.viewModelDrum.onClickCircle(id: id)
//    }
//}
//
//struct DrumPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        DrumPageView()
//            .previewInterfaceOrientation(.landscapeRight)
//    }
//}
