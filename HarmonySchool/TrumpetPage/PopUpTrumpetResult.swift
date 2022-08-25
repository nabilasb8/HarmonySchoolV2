//
//  PopUpTrumpetResult.swift
//  HarmonySchool
//
//  Created by Ayu Mutiara Dewi on 25/08/22.
//

import SwiftUI

struct PopUpTrumpetResult: View {
    let borderWidth = 4.0
    let yellowColor = Color(.sRGB, red: 249/255, green: 192/255, blue: 47/255, opacity: 1.0)
    @Binding var presentedAsPopUpTrumpet: Bool
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Spacer()
                            .frame(width: 100)
                        Image("background_popuptrumpet")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 1000)
                            .ignoresSafeArea()
                    }
                    
                    Spacer()
                        .frame(height: 155)
                }
                
                VStack {
                    Spacer()
                        .frame(height: 400)
                    
                    HStack(spacing: 30) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .strokeBorder(.black, lineWidth: borderWidth)
                                .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(yellowColor))
                                .frame(width: 170, height: 65)
                            
                            Text("Yes")
                                .font(.system(size: 30))
                        }
                        .position(x: 380, y: 180)
                        .onTapGesture {
                            presentedAsPopUpTrumpet = false
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .strokeBorder(.black, lineWidth: borderWidth)
                                .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(yellowColor))
                                .frame(width: 170, height: 65)
                            
                            Text("No")
                                .font(.system(size: 30))
                        }
                        .position(x: 100, y: 180)
                        .onTapGesture {
                            presentedAsPopUpTrumpet = false
                        }
                        
                        Spacer()
                            .frame(width: 400)
                    }
                    
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}


struct PopUpTrumpetResult_Previews: PreviewProvider {
    static var previews: some View {
        PopUpTrumpetResult(presentedAsPopUpTrumpet: .constant(false))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
