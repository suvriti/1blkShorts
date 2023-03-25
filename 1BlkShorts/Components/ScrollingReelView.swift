//
//  ScrollingReelView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 23/03/23.
//

import SwiftUI

struct ScrollingReelView: View {
    
    var colors : [Color] = [.red, .green, .blue, .black]
    
    
    var body: some View {
        
        GeometryReader{geometry in
            TabView{
                ForEach(0..<25){i in
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
        
        
    }
    
    
}


struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingReelView()
    }
}
