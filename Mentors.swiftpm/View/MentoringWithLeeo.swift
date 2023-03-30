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
        if #available(iOS 16.0, *) {
            VStack {
                Spacer()
                
                VideoPlayer(player: avPlayer)
                    .onDisappear {
                        avPlayer.isMuted = false
                    }
                
                Spacer()
            }
            .ignoresSafeArea()
            .background(Color(.black))
            .onAppear {
                avPlayer.play()
            }
            .onDisappear {
                avPlayer.pause()
                avPlayer.seek(to: .zero)
            }
            .toolbar(.hidden, for: .tabBar)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct MentoringWithLeeo_Previews: PreviewProvider {
    static var previews: some View {
        MentoringWithLeeo()
    }
}
