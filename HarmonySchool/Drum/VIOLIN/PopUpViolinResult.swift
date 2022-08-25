//
//  PopUpViolinResult.swift
//  HarmonySchool
//
//  Created by Brenda Nathania Passandaran on 25/08/22.
//

import SwiftUI

struct PopUpViolinResult: View {
    let borderWidth = 4.0
    let yellowColor = Color(.sRGB, red: 249/255, green: 192/255, blue: 47/255, opacity: 1.0)
    @Binding var presentedAsPopUp: Bool
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("drumpage_background")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Spacer()
                            .frame(width: 100)
                        Image("violin_cewek")
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
                        .onTapGesture {
                            presentedAsPopUp = false
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .strokeBorder(.black, lineWidth: borderWidth)
                                .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(yellowColor))
                                .frame(width: 170, height: 65)
                            
                            Text("No")
                                .font(.system(size: 30))
                        }
                        .onTapGesture {
                            presentedAsPopUp = false
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

struct PopUpViolinResult_Previews: PreviewProvider {
    static var previews: some View {
        PopUpViolinResult(presentedAsPopUp: .constant(false))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
