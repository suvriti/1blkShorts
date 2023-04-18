//
//  CategoriesView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 25/03/23.
//

import SwiftUI
import AVKit

struct CategoriesView: View {
    var avPlayer = AVPlayer(url: URL(string: "https://player.vimeo.com/external/291648067.hd.mp4?s=94998971682c6a3267e4cbd19d16a7b6c720f345&profile_id=175&oauth2_token_id=57447761")!)
    var columns: [GridItem] = [
          
            GridItem(.fixed(160)),
            GridItem(.fixed(160))

        ]
    var body: some View {
        ScrollView{
            LazyVStack{
                
                ZStack(alignment: .topTrailing){
                    TabView() {
                        ForEach(0..<3) { index in
                            VideoView(player: avPlayer)
                                .frame(height: 200)
                                .border(Color.black)
                                .overlay(Color.black.opacity(0.1))
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 200)
                    .cornerRadius(20)
                    
                    Image("wavesOpacity")
                        .frame(width: UIScreen.main.bounds.width-20)
                        .cornerRadius(20)
                
                    
                    Text("Nature")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .bold,design:.serif))
                        .bold()
                        .padding(20)
                }
                
                ZStack(alignment: .topTrailing){
                    TabView() {
                        ForEach(0..<3) { index in
                            VideoView(player: avPlayer)
                                .frame(height: 200)
                                .border(Color.black)
                                .overlay(Color.black.opacity(0.1))
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 200)
                    .cornerRadius(20)
                    
                    Image("wavesOpacity")
                        .frame(width: UIScreen.main.bounds.width-20)
                        .cornerRadius(20)
                
                    
                    Text("Finance")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .bold,design:.serif))
                        .bold()
                        .padding(20)
                }
                ZStack(alignment: .topTrailing){
                    TabView() {
                        ForEach(0..<3) { index in
                            VideoView(player: avPlayer)
                                .frame(height: 200)
                                .border(Color.black)
                                .overlay(Color.black.opacity(0.1))
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 200)
                    .cornerRadius(20)
                    
                    Image("wavesOpacity")
                        .frame(width: UIScreen.main.bounds.width-20)
                        .cornerRadius(20)
                
                    
                    Text("Something")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .bold,design:.serif))
                        .bold()
                        .padding(20)
                }
                
                ZStack(alignment: .topTrailing){
                    TabView() {
                        ForEach(0..<3) { index in
                            VideoView(player: avPlayer)
                                .frame(height: 200)
                                .border(Color.black)
                                .overlay(Color.black.opacity(0.1))
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 200)
                    .cornerRadius(20)
                    
                    Image("wavesOpacity")
                        .frame(width: UIScreen.main.bounds.width-20)
                        .cornerRadius(20)
                
                    
                    Text("Short")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .bold,design:.serif))
                        .bold()
                        .padding(20)
                }
            }
            .padding(.leading,10)
            .padding(.trailing,10)
            .padding(.top,30)
        }
        .background(Color("BlkYellow"))
        
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
