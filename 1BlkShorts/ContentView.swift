//
//  ContentView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI

struct ContentView: View {
    
    func scrollingReelView() -> some View{
        return NavigationView{
            GeometryReader{geometry in
                TabView{
                    ForEach(0..<5){i in
                        ReelView()
                    }
                    .frame(width: geometry.size.width,height: geometry.size.height)
                    .rotationEffect(.degrees(-90))
                }
                .rotationEffect(.degrees(90),anchor: .topLeading)
                .frame(width: geometry.size.height,height: geometry.size.width)
                .offset(x: geometry.size.width)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
            .navigationTitle("1Blk Shorts")
        }
    }
    
    var body: some View {
        TabView{
            HomeView().tabItem{
                Label("Home",systemImage: "house.fill")
            }
            ExploreView().tabItem{
                Label("Explore",systemImage: "magnifyingglass")
            }
            UploadView().tabItem{
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
