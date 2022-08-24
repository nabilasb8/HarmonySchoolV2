//
//  PopUpGuitarResult.swift
//  HarmonySchool
//
//  Created by Nabila on 24/08/22.
//

import SwiftUI

struct PopUpGuitarResult: View {
    let borderWidth = 4.0
    let yellowColor = Color(.sRGB, red: 249/255, green: 192/255, blue: 47/255, opacity: 1.0)
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("background_popupguitar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                        .frame(height: 400)
                    HStack (spacing: 30){
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .strokeBorder(.black, lineWidth: borderWidth)
                                .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(yellowColor))
                                .frame(width: 170, height: 65)
                                
                            Text("Yes")
                                .font(.system(size: 30))
                        }
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .strokeBorder(.black, lineWidth: borderWidth)
                                .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(yellowColor))
                                .frame(width: 170, height: 65)
                            
                            Text("No")
                                .font(.system(size: 30))
                        }
                        Spacer()
                            .frame(width: 700)
                    }
                    
                }
            }
            
        }.navigationViewStyle(.stack)
    }
}

struct PopUpGuitarResult_Previews: PreviewProvider {
    static var previews: some View {
        PopUpGuitarResult()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
