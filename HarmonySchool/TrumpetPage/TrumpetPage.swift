//
//  SaxoPage.swift
//  HarmonySchool
//
//  Created by Ayu Mutiara Dewi on 21/08/22.
//

import SwiftUI
import AVFoundation

func button2Pressed(){
    print("button pressed")
}

struct TrumpetPage: View {
    var buttonNumber: Int = 0
    var selectedNumber: Int = 0
    @State private var showButton = false
    @ObservedObject var viewModelTrumpet: TrumpetPageViewModel = TrumpetPageViewModel()
    @State var presentingPopUpTrumpet: Bool = false
    let activeTrumpetColor = Color(.sRGB, red: 129/255, green: 128/255, blue: 255/255, opacity: 1.0)
    let nonTrumpetColor = Color(.sRGB, red: 66/255, green: 54/255, blue: 46/225, opacity: 1.0)
    
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                Image("TrumpetBoy")
                    .position(x: 1125, y: 500)
                Image("Trumpet")
                ZStack {
                    VStack(spacing: 20) {
                        ForEach($viewModelTrumpet.notes) { $note in
                            Circle()
                                .fill(note.isTrumpetActive ? activeTrumpetColor : nonTrumpetColor)
                            //                                .border(.black)
                                .frame(height: 80)
                            
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        note.isTrumpetActive = false
                                        self.onClickNote(id: note.id)
                                    }
                                }
                        }
                        
                    }
                    .rotationEffect(.degrees(138))
                    .position(x: 655, y: 715)
                    VStack {
                        Image("HomeButton")
                        Image("TutorialButton")
                        
                        
                    }
                    .position(x: 100, y: 150)
                    ZStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(.white)
                            RoundedRectangle(cornerRadius: 50)
                                .strokeBorder(.black, lineWidth: 20)
                        }
                        .frame(width: 550, height: 240)
                        VStack(alignment: .leading) {
                            Text("TRUMPET")
                                .font(.system(size: 62))
                                .bold()
                            Text("Happy Birthday")
                                .font(.system(size: 32))
                        }
                        .offset(x: -50)
                        
                        Image(viewModelTrumpet.isPlayingTrumpet ? "PauseButton" : "PlayButton")
                            .offset(x: 270)
                            .onTapGesture {
                                viewModelTrumpet.onClickButtonPlayTrumpet()
                            }
                    }
                    .position(x: 500, y: 180)
                }
            }
            .onChange(of: viewModelTrumpet.showPopUpTrumpet) { showPopUp in
                presentingPopUpTrumpet = showPopUp
            }
            .fullScreenCover(isPresented: $presentingPopUpTrumpet) {
                PopUpTrumpetResult(presentedAsPopUpTrumpet: $presentingPopUpTrumpet)
            }
        }
        .navigationViewStyle(.stack)
    }
    
    func onClickNote(id: Int) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.viewModelTrumpet.onClickNote(id: id)
        }
    }
}

struct TrumpetPage_Previews: PreviewProvider {
    static var previews: some View {
        TrumpetPage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
