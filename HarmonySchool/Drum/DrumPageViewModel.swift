////
////  DrumPageViewModel.swift
////  HarmonySchool
////
////  Created by Brenda Nathania Passandaran on 25/08/22.
////
//
//import Foundation
//import AVFoundation
//
//class DrumPageViewModel: ObservableObject {
//    var audioPlayer: AVAudioPlayer?
//    @Published var strings: [DrumString] = []
//    
//    var songStrings: [Int] = [94,91,92,92,92,92,92,92,92,94,91,92,92,92,92,92,92,92,94,91,92,92,92,92,92,92,92,92,91,94,91,92,92,92,92,92,92,92,94,91,92,92,92,92,92,92,92,94,91,92,92,92,92,92,92,92,92,91]
//    
//    
//    var currentActiveIndex: Int? {
//        didSet {
//            if let activeIndex = currentActiveIndex {
//                if activeIndex < songStrings.count {
//                    activeStringId = songStrings[activeIndex]
//                } else {
//                    showPopUp = true
//                    isPlaying = false
//                    activeStringId = nil
//                }
//            } else {
//                isPlaying = false
//                activeStringId = nil
//            }
//            createStrings()
//        }
//    }
//    
//    var activeStringId: Int?
//    
//    @Published var showPopUp: Bool = false
//    @Published var isPlaying: Bool = false
//    
//    init() {
//        createStrings()
//    }
//    
//    func createStrings() {
//        strings.removeAll()
//        for stringId in 0...3 {
//            var isActive = false
//            if let currentActiveStringId = activeStringId, currentActiveStringId == stringId {
//                isActive = true
//            }
//            let string: DrumString = DrumString(id: stringId, isActive: isActive)
//            strings.append(string)
//        }
//    }
//    
//    func onClickString(id: Int) {
//        let path = Bundle.main.path(forResource: "\(id).mp3", ofType:nil)!
//        let url = URL(fileURLWithPath: path)
//        
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: url)
//            audioPlayer?.play()
//            
//            if let currentActiveIndex = currentActiveIndex {
//                self.currentActiveIndex = currentActiveIndex + 1
//            }
//        } catch {
//            print("Couldn't load file")
//        }
//    }
//    
//    func onClickButtonPlay() {
//        if isPlaying {
//            currentActiveIndex = nil
//        } else {
//            isPlaying = true
//            currentActiveIndex = 0
//        }
//    }
//}
