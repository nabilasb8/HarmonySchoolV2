//
//  ViolinPageViewModel.swift
//  HarmonySchool
//
//  Created by Brenda Nathania Passandaran on 25/08/22.
//

import Foundation
import AVFoundation

class ViolinPageViewModel: ObservableObject {
    var audioPlayerViolin: AVAudioPlayer?
    @Published var viviStrings: [ViolinViviString] = []
    //G D A E
    var songViviStrings: [Int] = [1, 1, 2, 1, 1, 1, 2, 1, 2, 2, 1, 0, 1, 1, 2, 1]
    var currentActiveViolin: Int? {
        didSet {
            if let activeViolin = currentActiveViolin {
                if activeViolin < songViviStrings.count {
                    activeViviStringId = songViviStrings[activeViolin]
                } else {
                    showPopUpViolin = true
                    isViolinPlaying = false
                    activeViviStringId = nil
                }
            } else {
                isViolinPlaying = false
                activeViviStringId = nil
            }
            createViviStrings()
        }
    }
    
    var activeViviStringId: Int?
    
    @Published var showPopUpViolin: Bool = false
    @Published var isViolinPlaying: Bool = false
    
    init() {
        createViviStrings()
    }
    
    func createViviStrings() {
        viviStrings.removeAll()
        for viviStringId in 0...3 {
            var isViolinActive = false
            if let currentActiveViviStringId = activeViviStringId, currentActiveViviStringId == viviStringId {
                isViolinActive = true
            }
            let viviString: ViolinViviString = ViolinViviString(id: viviStringId, isActive: isViolinActive)
            viviStrings.append(viviString)
        }
    }
    
    func onClickViviString(id: Int) {
        let path = Bundle.main.path(forResource: "violin_\(id).mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayerViolin = try AVAudioPlayer(contentsOf: url)
            audioPlayerViolin?.play()
            
            if let currentActiveViolin = currentActiveViolin {
                self.currentActiveViolin = currentActiveViolin + 1
            }
        } catch {
            print("Couldn't load file")
        }
    }
    
    func onClickButtonPlayViolin() {
        if isViolinPlaying {
            currentActiveViolin = nil
        } else {
            isViolinPlaying = true
            currentActiveViolin = 0
        }
    }
}