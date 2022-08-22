//
//  SaxoPage.swift
//  HarmonySchool
//
//  Created by Ayu Mutiara Dewi on 21/08/22.
//

import SwiftUI

func button2Pressed(){
    print("button pressed")
}

struct TrumpetPage: View {
    var body: some View {
        ZStack {
            Image("Background")
            Image("TrumpetBoy")
                .position(x: 1125, y: 500)
            ZStack {
                Image("Trumpet")
                
                Image("Button1")
                    .position(x: 860, y: 940)
                    .onTapGesture {
                        button2Pressed()
                    }
                Image("Button1")
                    .position(x: 790, y: 860)
                    .onTapGesture {
                        button2Pressed()
                    }
                Image("Button1")
                    .position(x: 720, y: 780)
                    .onTapGesture {
                        button2Pressed()
                    }
                Image("Button1")
                    .position(x: 650, y: 705)
                    .onTapGesture {
                        button2Pressed()
                    }
                Image("Button1")
                    .position(x: 580, y: 635)
                    .onTapGesture {
                        button2Pressed()
                    }
                Image("Button1")
                    .position(x: 510, y: 560)
                    .onTapGesture {
                        print("button cantik")
                    }
            }
            VStack {
                Button {
                    button2Pressed()
                } label: {
                    Image("HomeButton")
                }
                Button {
                    button2Pressed()
                } label: {
                    Image("TutorialButton")
                }
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
                        .font(.custom("SF Pro Rounded", size: 61))
                    Text("Hey Tayo Song")
                        .font(.custom("SF Pro Rounded", size: 30))
                        .foregroundColor(Color.black)
                }
                .offset(x: -50)
                Button {
                    button2Pressed()
                } label: {
                    Image("PlayButton")
                }   .offset(x: 270)
            }
            .position(x: 500, y: 250)
        }
    }
    
}


struct TrumpetPage_Previews: PreviewProvider {
    static var previews: some View {
        TrumpetPage()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
