//
//  GuitarPageViewModel.swift
//  HarmonySchool
//
//  Created by Nabila on 23/08/22.
//

import Foundation
import AVFoundation

class GuitarPageViewModel: ObservableObject {
    var audioPlayer: AVAudioPlayer?
    @Published var strings: [GuitarString] = []
    
    var songStrings: [Int] = [1, 1, 1, 0, 2, 2, 0, 0, 0, 3, 3, 1, 0, 1, 1, 1, 0, 2, 2, 0, 0, 0, 3, 3, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    var currentActiveIndex: Int? {
        didSet {
            if let activeIndex = currentActiveIndex {
                if activeIndex < songStrings.count {
                    activeStringId = songStrings[activeIndex]
                } else {
                    showPopUp = true
                    isPlaying = false
                    activeStringId = nil
                }
            } else {
                isPlaying = false
                activeStringId = nil
            }
            createStrings()
        }
    }
    
    var activeStringId: Int?
    
    @Published var showPopUp: Bool = false
    @Published var isPlaying: Bool = false
    
    init() {
        createStrings()
    }
    
    func createStrings() {
        strings.removeAll()
        for stringId in 0...3 {
            var isActive = false
            if let currentActiveStringId = activeStringId, currentActiveStringId == stringId {
                isActive = true
            }
            let string: GuitarString = GuitarString(id: stringId, isActive: isActive)
            strings.append(string)
        }
    }
    
    func onClickString(id: Int) {
        let path = Bundle.main.path(forResource: "\(id).mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
            
            if let currentActiveIndex = currentActiveIndex {
                self.currentActiveIndex = currentActiveIndex + 1
            }
        } catch {
            print("Couldn't load file")
        }
    }
    
    func onClickButtonPlay() {
        if isPlaying {
            currentActiveIndex = nil
        } else {
            isPlaying = true
            currentActiveIndex = 0
        }
    }
}
