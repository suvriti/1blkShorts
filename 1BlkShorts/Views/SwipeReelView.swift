//
//  SwipingReelView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/04/23.
//

import SwiftUI
import AVKit

struct SwipeReelView: View {
    
    @State private var selectedTab = 1
    
    var videoList : [BlkVideo]
    
    func scrollingReelView() -> some View{
        return GeometryReader{geometry in
                TabView(selection: $selectedTab){
                    ForEach(0..<videoList.count, id: \.self){i in
                        ReelView(title: videoList[i].name,description: videoList[i].description,player: AVPlayer(url : URL(string: videoList[i].m3u8url)!),
                                 reelIndex: i,
                        selectedTabItem: $selectedTab)
                        .tag(i)
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
    
    
    
    var body: some View {
        scrollingReelView()
    }
}

//struct SwipingReelView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwipeReelView(videoPlayer: $videoPlayer)
//    }
//}
