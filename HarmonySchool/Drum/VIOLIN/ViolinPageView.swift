//
//  ViolinPageView.swift
//  HarmonySchool
//
//  Created by Brenda Nathania Passandaran on 25/08/22.
//

import Foundation
import SwiftUI

struct ViolinPageView: View {
    let viviStringColor = Color(.sRGB, red: 130/255, green: 89/255, blue: 89/255, opacity: 1.0)
    let viviStringHeight = 20.0
    let borderWidthViolin = 4.0
    let yellowColorViolin = Color(.sRGB, red: 249/255, green: 192/255, blue: 47/255, opacity: 1.0)
    let activeViviStringColor = Color(.sRGB, red: 129/255, green: 128/255, blue: 255/255, opacity: 1.0)
    @ObservedObject var viewModelViolin: ViolinPageViewModel = ViolinPageViewModel()
    @State var presentingPopUpViolin: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("violin_background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                        .frame(height: 450)
                    
                    HStack {
                        VStack(spacing: 0) {
                            ForEach($viewModelViolin.viviStrings) { $viviString in
                                Rectangle()
                                    .fill(viviString.isActive ? activeViviStringColor : viviStringColor)
                                    .frame(height: viviStringHeight)
                                    .border(.black, width: borderWidthViolin)
                                    .onTapGesture {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            viviString.isActive = false
                                            self.onClickViviString(id: viviString.id)
                                        }
                                    }
                            }
                        }
                    }
                }
                .rotationEffect(.degrees(42)).position(x:900,y:700)
                
                HStack {
                    VStack {
                        ZStack {
                            Circle()
                                .strokeBorder(.black, lineWidth: borderWidthViolin)
                                .background(Circle().fill(yellowColorViolin))
                                .frame(width: 80, height: 80)
                            
                            Image(systemName: "house.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        
                        ZStack {
                            Circle()
                                .strokeBorder(.black, lineWidth: borderWidthViolin)
                                .background(Circle().fill(yellowColorViolin))
                                .frame(width: 80, height: 80)
                            
                            Image(systemName: "exclamationmark.triangle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                        }
                        
                        Spacer()
                            .frame(height: 700)
                    }
                    Spacer()
                        .frame(width: 1150)
                }
                
                VStack {
                    HStack {
//                        VStack {
//                            Text("VIOLIN")
//                                .font(.system(size: 62))
//                                .bold()
//                            Text("Old Macdonald Had a Farm")
//                                .font(.system(size: 32))
//                        }
//                        Spacer()
//                            .frame(width: 20)
                        
                        ZStack {
                            Circle()
                                .strokeBorder(.black, lineWidth: borderWidthViolin)
                                .background(Circle().fill(yellowColorViolin))
                                .frame(width: 120, height: 120)
                            
                            Image(systemName: viewModelViolin.isViolinPlaying ? "pause.fill" : "play.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                
                        }.position(x: 750, y: 120)
                        .onTapGesture {
                            viewModelViolin.onClickButtonPlayViolin()
                        }
                        
                        Spacer()
                            .frame(width: 220)
                    }
                    Spacer()
                        .frame(height: 625)
                }
            }
            .onChange(of: viewModelViolin.showPopUpViolin) { showPopUpViolin in
                presentingPopUpViolin = showPopUpViolin
            }
            .fullScreenCover(isPresented: $presentingPopUpViolin) {
                PopUpViolinResult(presentedAsPopUp: $presentingPopUpViolin)
            }
            
        }.navigationViewStyle(.stack)
    }
    
    func onClickViviString(id: Int) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.viewModelViolin.onClickViviString(id: id)
        }
    }
}

struct ViolinPageView_Previews: PreviewProvider {
    static var previews: some View {
        ViolinPageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
