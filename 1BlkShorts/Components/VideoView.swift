//
//  VideoView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 19/03/23.
//

import SwiftUI
import AVKit

struct VideoView: View {
    
    var player = AVPlayer(url: URL(string: "https://player.vimeo.com/external/291648067.hd.mp4?s=94998971682c6a3267e4cbd19d16a7b6c720f345&profile_id=175&oauth2_token_id=57447761")!)
    
    var body: some View {
        VideoPlayer(player: player)
            .edgesIgnoringSafeArea(.all)
            .onAppear{
                player.play()
                player.actionAtItemEnd = .none
                NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { _ in
                                    player.seek(to: CMTime.zero)
                                    player.play()
                                }
            }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
