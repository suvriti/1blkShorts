//
//  ReelView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI
import AVKit

struct ReelView: View {
    
//    @State var likeCount:Int
    
    @State var isLiked = false
    
    var player = AVPlayer(url: URL(string: "https://player.vimeo.com/external/291648067.hd.mp4?s=94998971682c6a3267e4cbd19d16a7b6c720f345&profile_id=175&oauth2_token_id=57447761")!)
    
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
                    player.play()
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
                Text("30.2k")
                    .foregroundColor(.white)
                    .font(.headline)
                Button(action : commentBtnPressed){
                    Image(systemName:"ellipsis.message.fill")
                        .foregroundColor(.white)
                        .font(Font.system(.title3).bold())
                        .padding(5)
                }
                Text("3.2k")
                    .foregroundColor(.white)
                    .font(.headline)
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
                Text("@craig_love")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .bold()
                Text("The most satisfying Job The most satisfying JobThe most satisfying JobThe most satisfying Job#fyp #satisfying #roadmarking")
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .lineLimit(2)
            }
            .padding(.bottom, 20)
            .frame(maxHeight: .infinity, alignment: .bottom)
            
        }
    }
}

struct ReelView_Previews: PreviewProvider {
    static var previews: some View {
        ReelView()
    }
}
