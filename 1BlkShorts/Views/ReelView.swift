//
//  ReelView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI
import AVKit

struct ReelView: View {
    
    var title : String
    var description : String
    
    @State var player: AVPlayer
    
    @State var isLiked = false
        
    @State var reelIndex : Int = 0
    
    @Binding var selectedTabItem : Int
    
    func likeBtnPressed(){
        isLiked = !isLiked
    }
    
    func commentBtnPressed(){
        
    }
    
    func shareBtnPressed(){
        
    }
    
    var body: some View {
        ZStack{
            VideoPlayer(player: player)
                .edgesIgnoringSafeArea(.all)
                .onAppear{
                    player.actionAtItemEnd = .none
                    NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { _ in
                                        player.seek(to: CMTime.zero)
                                        player.play()
                                    }
                }
            VStack{
                Button(action: likeBtnPressed){
                    Image(systemName: !isLiked ? "heart" : "heart.fill")
                        .foregroundColor(!isLiked ? .white : .red)
                        .font(Font.system(.title3).bold())
                        .padding(5)
                }
//                Text("30.2k")
//                    .foregroundColor(.white)
//                    .font(.headline)
                Button(action : commentBtnPressed){
                    Image(systemName:"ellipsis.message.fill")
                        .foregroundColor(.white)
                        .font(Font.system(.title3).bold())
                        .padding(5)
                }
//                Text("3.2k")
//                    .foregroundColor(.white)
//                    .font(.headline)
                Button(action: shareBtnPressed){
                    Image(systemName:"arrowshape.turn.up.right.fill")
                        .foregroundColor(.white)
                        .font(Font.system(.title3)
                            .bold())
                        .padding(5)
                }
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottomTrailing)
            .padding(.bottom,100)
            .padding(.trailing,10)
            
            VStack(alignment: .leading,spacing:10){
                HStack{
                    Image(systemName: "doc.plaintext.fill")
                        .foregroundColor(Color.white)
                        .padding(.trailing, 4)
                    Text(title)
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .bold()
                }
                Text(description)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .lineLimit(2)
                    .onAppear(perform: {
                        player.play()
                    })
                    .onDisappear(perform: {
                        player.pause()
                    })
                    .padding(.leading, 5)
            }
            .padding(.bottom, 20)
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: .infinity,
                  alignment: .bottomLeading
                )
            
        }
    }
}

struct ReelView_Previews: PreviewProvider {

    @State static var selectedItem = 0

    static var videoPlayer = AVPlayer(url: URL(string: "https://hack2023ms-inct.streaming.media.azure.net/451cca72-73c0-4c88-a868-f47eaaa4e043/newYorkFlip-clip.ism/manifest(format=m3u8-cmaf)")!)

    static var previews: some View {
        ReelView(title: "title", description: "description",player: videoPlayer,selectedTabItem: $selectedItem)
    }
}
