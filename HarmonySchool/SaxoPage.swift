//
//  SaxoPage.swift
//  HarmonySchool
//
//  Created by Ayu Mutiara Dewi on 21/08/22.
//

import SwiftUI

struct SaxoPage: View {
    var body: some View {
        ZStack {
            Image("Background")
            Image("HomeButton")
                .position(x: 100, y: 100)
            Image("TutorialButton")
                .position(x: 100, y: 200)
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
                        .font(.custom("SF Pro Rounded", size: 61))
                    Text("Hey Tayo Song")
                        .font(.custom("SF Pro Rounded", size: 30))
                        .foregroundColor(Color.black)
                }
                .offset(x: -50)
                Image("PlayButton")
                    .offset(x: 270)
            }
            .position(x: 500, y: 250)
            ZStack{
                Image("TrumpetBoy")
                    .position(x: 1125, y: 500)
                Image("Trumpet")
                Image("Button1")
                    .position(x: 860, y: 940)
                Image("Button1")
                    .position(x: 790, y: 860)
                Image("Button1")
                    .position(x: 720, y: 780)
                Image("Button1")
                    .position(x: 650, y: 705)
                Image("Button1")
                    .position(x: 580, y: 635)
                Image("Button1")
                    .position(x: 510, y: 560)
            }
            
        }
    }
}

struct SaxoPage_Previews: PreviewProvider {
    static var previews: some View {
        SaxoPage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
