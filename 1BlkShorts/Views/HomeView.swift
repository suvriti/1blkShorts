//
//  HomeView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI
import AVKit

struct HomeView: View {
    
    var videoPlayer = [
        AVPlayer(url: URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/acaa9bfa-76e9-4f0d-a2d4-c3f674aea59e/monkey-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/451cca72-73c0-4c88-a868-f47eaaa4e043/newYorkFlip-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/acaa9bfa-76e9-4f0d-a2d4-c3f674aea59e/monkey-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/451cca72-73c0-4c88-a868-f47eaaa4e043/newYorkFlip-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/451cca72-73c0-4c88-a868-f47eaaa4e043/newYorkFlip-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/acaa9bfa-76e9-4f0d-a2d4-c3f674aea59e/monkey-clip.ism/manifest(format=m3u8-cmaf)")!),
        AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/451cca72-73c0-4c88-a868-f47eaaa4e043/newYorkFlip-clip.ism/manifest(format=m3u8-cmaf)")!)
    ]
    
    @State var isSheetPresented = false
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text("#happeningThisWeek")
                    .font(.headline)
                    .frame(alignment: .leading)
                ScrollView(.horizontal){
                    HStack{
                        Image("image1")
                            .resizable()
                            .frame(width: 150, height: 200)
                            .border(Color.black)
                            .cornerRadius(10)
                            .sheet(isPresented: $isSheetPresented, content: {
                                Text("Hello from Sheet")
                            })
                            .onTapGesture {
                                isSheetPresented = true
                            }
                        Image("image2")
                            .resizable()
                            .frame(width: 150, height: 200)
                            .border(Color.black)
                            .cornerRadius(10)
                            .sheet(isPresented: $isSheetPresented, content: {
                                Text("Hello from Sheet")
                            })
                        Image("image3")
                            .resizable()
                            .frame(width: 150, height: 200)
                            .border(Color.black)
                            .cornerRadius(10)
                            .sheet(isPresented: $isSheetPresented, content: {
                                Text("Hello from Sheet")
                            })
                        
                    }
                }
                VStack{
                    ForEach(0..<5) { index in
                        VideoView(player: videoPlayer[index])
                            .frame(width: 400, height: 400)
                            .border(Color.black)
                    }
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(0..<8) { index in
                                VideoView(player: videoPlayer[index])
                                    .frame(width: 200, height: 150)
                                    .border(Color.black)
                            }
                        }
                    }
                    ForEach(0..<5) { index in
                        VideoView(player: videoPlayer[index])
                            .frame(width: 400, height: 400)
                            .border(Color.black)
                    }
                }
            }
            .navigationTitle("Home")
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
