//
//  TrumpetPageViewModel.swift
//  HarmonySchool
//
//  Created by Ayu Mutiara Dewi on 25/08/22.
//

import Foundation
import AVFoundation

class TrumpetPageViewModel: ObservableObject {
    var audioPlayerTrumpet: AVAudioPlayer?
    @Published var notes: [TrumpetNote] = []
    
    let songNotes = [0, 0, 1, 0, 2, 3, 0, 0, 1, 2, 3, 0, 0, 0, 3, 4, 3, 1, 2, 3, 2, 0, 2]
    
    var currentActiveTrumpet: Int? {
        didSet {
            if let activeTrumpet = currentActiveTrumpet {
                if activeTrumpet < songNotes.count {
                    activeTrumpetId = songNotes[activeTrumpet]
                } else {
                    showPopUpTrumpet = true
                    isPlayingTrumpet = false
                    activeTrumpetId = nil
                }
            } else {
                isPlayingTrumpet = false
                activeTrumpetId = nil
            }
            createNotes()
        }
    }
    
    var activeTrumpetId: Int?
    
    @Published var showPopUpTrumpet: Bool = false
    @Published var isPlayingTrumpet: Bool = false
    
    init() {
        createNotes()
    }
    
    func createNotes() {
        notes.removeAll()
        for noteId in 0...5 {
            var isTrumpetActive = false
            if let currentActiveTrumpetId = activeTrumpetId, currentActiveTrumpetId == noteId {
                isTrumpetActive = true
            }
            let note: TrumpetNote = TrumpetNote(id: noteId, isTrumpetActive: isTrumpetActive)
            notes.append(note)
        }
    }
    
    func onClickNote(id: Int) {
        let pathTrumpet = Bundle.main.path(forResource: "trumpet_\(id).mp3", ofType:nil)!
        let urlTrumpet = URL(fileURLWithPath: pathTrumpet)
        
        do {
            audioPlayerTrumpet = try AVAudioPlayer(contentsOf: urlTrumpet)
            audioPlayerTrumpet?.play()
            
            if let currentActiveTrumpet = currentActiveTrumpet {
                self.currentActiveTrumpet = currentActiveTrumpet + 1
            }
        } catch {
            print("Couldn't load file")
        }
    }
    
    func onClickButtonPlayTrumpet() {
        if isPlayingTrumpet {
            currentActiveTrumpet = nil
        } else {
            isPlayingTrumpet = true
            currentActiveTrumpet = 0
        }
    }
}
