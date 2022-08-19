//
//  ContentView.swift
//  HarmonySchool
//
//  Created by Nabila on 18/08/22.
//

import SwiftUI

struct PianoPAge: View {
    var body: some View {
        
        NavigationView {
            ZStack{
                Image("Background")
                    .resizable()
                    .ignoresSafeArea()
            }
            
        }.navigationViewStyle(.stack)
    }
}

struct PianoPage_Previews: PreviewProvider {
    static var previews: some View {
        PianoPAge()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
