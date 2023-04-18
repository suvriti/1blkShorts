//
//  HomeView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI
import WebKit
import AVKit

struct WebView: UIViewRepresentable {
    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct HomeView: View {
    
    @State var videoPlayer = [
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
    
    @State var url = URL(string: "https://forms.office.com/Pages/ResponsePage.aspx?id=KAKY0MH990Sf-uQXndYjkDS-nKnnvGdEneHjXc3YBWJUOFBQQ0RTS0o4VFRCWElFUzQzRzJLSDhWVy4u&origin=Invitation&channel=0")
    
    let customHeaders = ["Authorization": "Basic YW1iYWJiYXI6KG10bnVGTUNvQDIxJSk="]
    
    func createCustomRequest() -> URLRequest {
            var request = URLRequest(url: url!)
            for (key, value) in customHeaders {
                request.addValue(value, forHTTPHeaderField: key)
            }
            return request
        }
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("#happeningThisWeek")
                        .font(.headline)
                        .fontWeight(.bold)
                        .italic()
                        .foregroundColor(Color.black)
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        .padding(.leading, 30)
                        .padding(.top,20)
                    ScrollView(.horizontal){
                        HStack{
                            Image("image1")
                                .resizable()
                                .frame(width: 150, height: 200)
                                .border(Color.black)
                                .cornerRadius(10)
                                .sheet(isPresented: $isSheetPresented, content: {
                                    WebView(request: createCustomRequest())
                                })
                                .onTapGesture {
                                    url = URL(string: "https://forms.office.com/Pages/ResponsePage.aspx?id=KAKY0MH990Sf-uQXndYjkDS-nKnnvGdEneHjXc3YBWJUOFBQQ0RTS0o4VFRCWElFUzQzRzJLSDhWVy4u&origin=Invitation&channel=0")
                                    isSheetPresented = true
                                }
                                .padding(.leading,10)
                            Image("image2")
                                .resizable()
                                .frame(width: 150, height: 200)
                                .border(Color.black)
                                .cornerRadius(10)
                                .sheet(isPresented: $isSheetPresented, content: {
                                    Text("Hello from Sheet")
                                })
                                .padding(.leading,10)
                            Image("image3")
                                .resizable()
                                .frame(width: 150, height: 200)
                                .border(Color.black)
                                .cornerRadius(10)
                                .sheet(isPresented: $isSheetPresented, content: {
                                    Text("Hello from Sheet")
                                })
                                .padding(.leading,10)
                        }
                        .padding(.leading,20)
                        .padding(.trailing,20)
                        .padding(.bottom,20)
                       
                    }
                }
                .background(Color("BlkYellow"))
                VStack{
                    ForEach(0..<1) { index in
                        HeaderForPost()
                        VideoView(player: videoPlayer[index])
                            .frame(width: 400, height: 400)
                            .border(Color.black)
                        Spacer()
                    }
                    VStack{
                        Text("#growingTechnology")
                            .font(.headline)
                            .fontWeight(.bold)
                            .italic()
                            .foregroundColor(Color.black)
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                            .padding(.leading, 30)
                            .padding(.top,20)
                        NavigationLink(destination: SwipeReelView(videoPlayer: $videoPlayer)){
                            ScrollView(.horizontal){
                                HStack{
                                    ForEach(0..<8) { index in
                                        VideoView(player: videoPlayer[index])
                                            .frame(width: 150, height: 200)
                                            .border(Color.black)
                                            .padding(.leading,10)
                                            .cornerRadius(10)
                                    }
                                }
                                .padding(.leading,20)
                                .padding(.trailing,20)
                                .padding(.bottom,20)
                            }
                        }
                    }
                    .background(Color("BlkYellow"))
                    ForEach(0..<5) { index in
                        HeaderForPost()
                        VideoView(player: videoPlayer[index])
                            .frame(width: 400, height: 400)
                            .border(Color.black)
                            .cornerRadius(20)
                    }
                }
            }
            .navigationTitle("1BLK Flash")
            
        }
        
    }
}

struct HeaderForPost : View{
    var body : some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("username") // replace with the actual username
                    .font(.headline)
                
                Text("India") // replace with the actual location, if applicable
                    .font(.subheadline)
            }
            
            Spacer()
            
            Image(systemName: "ellipsis") // replace with the actual action button
                .padding(.trailing)
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
