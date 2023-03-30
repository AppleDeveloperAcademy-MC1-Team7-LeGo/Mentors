//
//  MentoringWithLeeo.swift
//  Mentors
//
//  Created by 제나 on 2023/03/29.
//

import SwiftUI
import AVKit

struct MentoringWithLeeo: View {
    
    let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "Mentoring", withExtension: "mp4")!)
    
    var body: some View {
        VideoPlayer(player: avPlayer)
            .onDisappear {
                avPlayer.isMuted = false
            }
    }
}

struct MentoringWithLeeo_Previews: PreviewProvider {
    static var previews: some View {
        MentoringWithLeeo()
    }
}
