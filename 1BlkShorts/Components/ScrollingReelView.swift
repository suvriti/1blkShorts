//
//  ScrollingReelView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 23/03/23.
//

import SwiftUI
import AVKit

struct ScrollingReelView: View {
    
    @State var sel = 0
    
    var colors : [Color] = [.red, .green, .blue, .black]
    
    var videoPlayer = AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/451cca72-73c0-4c88-a868-f47eaaa4e043/newYorkFlip-clip.ism/manifest(format=m3u8-cmaf)")!)
    
    
    var body: some View {
        
        GeometryReader{geometry in
            TabView{
                ForEach(0..<25){i in
                    ReelView(player: videoPlayer,selectedTabItem: $sel)
                        .onAppear(perform: {
                            videoPlayer.play()
                        })
                        .onDisappear(perform: {
                            videoPlayer.pause()
                        })
                }
                .frame(width: geometry.size.width,height: geometry.size.height)
                .rotationEffect(.degrees(-90))
            }
            .rotationEffect(.degrees(90),anchor: .topLeading)
            .frame(width: geometry.size.height,height: geometry.size.width)
            .offset(x: geometry.size.width)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
        }
        
        
    }
    
    
}


struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingReelView()
    }
}
