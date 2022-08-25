//
//  GuitarPageView.swift
//  HarmonySchool
//
//  Created by Nabila on 23/08/22.
//

import SwiftUI

struct GuitarPageView: View {
    let stringColor = Color(.sRGB, red: 130/255, green: 89/255, blue: 89/255, opacity: 1.0)
    let stringHeight = 20.0
    let borderWidth = 4.0
    let yellowColor = Color(.sRGB, red: 249/255, green: 192/255, blue: 47/255, opacity: 1.0)
    let activeStringColor = Color(.sRGB, red: 129/255, green: 128/255, blue: 255/255, opacity: 1.0)
    @ObservedObject var viewModel: GuitarPageViewModel = GuitarPageViewModel()
    @State var presentingPopUp: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("guitarpage_background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                        .frame(height: 450)
                    
                    HStack {
                        VStack(spacing: 20) {
                            ForEach($viewModel.strings) { $string in
                                Rectangle()
                                    .fill(string.isActive ? activeStringColor : stringColor)
                                    .frame(height: stringHeight)
                                    .border(.black, width: borderWidth)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            string.isActive = false
                                            self.onClickString(id: string.id)
                                        }
                                    }
                            }
                        }
                    }
                }
                .rotationEffect(.degrees(24))
                
                HStack {
                    VStack {
                        Image("HomeButton")
                        Image("TutorialButton")
                        
                        Spacer()
                            .frame(height: 700)
                    }
                    Spacer()
                        .frame(width: 1150)
                }
                
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("GUITAR")
                                .font(.system(size: 62))
                                .bold()
                            Text("Old Macdonald Had a Farm")
                                .font(.system(size: 32))
                        }
                        Spacer()
                            .frame(width: 20)
                        
                        
                        //                            Circle()
                        //                                .strokeBorder(.black, lineWidth: borderWidth)
                        //                                .background(Circle().fill(yellowColor))
                        //                                .frame(width: 120, height: 120)
                        
                        Image(viewModel.isPlaying ? "PauseButton" : "PlayButton")
                        //                                .resizable()
                        //                                .frame(width: 30, height: 30)
                        
                            .onTapGesture {
                                viewModel.onClickButtonPlay()
                            }
                        
                        Spacer()
                            .frame(width: 220)
                    }
                    Spacer()
                        .frame(height: 625)
                }
            }
            .onChange(of: viewModel.showPopUp) { showPopUp in
                presentingPopUp = showPopUp
            }
            .fullScreenCover(isPresented: $presentingPopUp) {
                PopUpGuitarResult(presentedAsPopUp: $presentingPopUp)
            }
            
        }.navigationViewStyle(.stack)
    }
    
    func onClickString(id: Int) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.viewModel.onClickString(id: id)
        }
    }
}

struct GuitarPageView_Previews: PreviewProvider {
    static var previews: some View {
        GuitarPageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
