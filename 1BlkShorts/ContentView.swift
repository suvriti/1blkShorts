//
//  ContentView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI
import AVKit
import os

struct ContentView: View {
    
    let logger = Logger(subsystem: Bundle.main.bundleIdentifier!, category: "view")
    
    @State private var selectedTab = 1
    
    var videoPlayer = [
        AVPlayer(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/acaa9bfa-76e9-4f0d-a2d4-c3f674aea59e/monkey-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/451cca72-73c0-4c88-a868-f47eaaa4e043/newYorkFlip-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/acaa9bfa-76e9-4f0d-a2d4-c3f674aea59e/monkey-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/451cca72-73c0-4c88-a868-f47eaaa4e043/newYorkFlip-clip.ism/manifest(format=m3u8-cmaf)")!)
    ]
    
    func scrollingReelView() -> some View{
        return NavigationView{
            GeometryReader{geometry in
                TabView(selection: $selectedTab){
                    ForEach(0..<5){i in
                        ReelView(title: "title", description : "description", player: videoPlayer[i],
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
            .navigationTitle("Blk Frame")
        }
    }
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView().tabItem{
                Label("Home",systemImage: "house.fill")
            }
            ExploreView().tabItem{
                Label("Explore",systemImage: "magnifyingglass")
            }
            UploadView(selectedTab: $selectedTab).tabItem{
                Label("",systemImage: "plus.app")
            }
            
            scrollingReelView().tabItem{
                Label("Shorts", systemImage: "video")
            }
            ProfileView().tabItem{
                Label("Profile",systemImage: "person.crop.circle")
            }
        }
        .accentColor(Color("BlkOrange"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
