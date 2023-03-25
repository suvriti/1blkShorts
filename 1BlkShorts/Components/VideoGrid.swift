//
//  VideoGrid.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 26/03/23.
//

import SwiftUI

struct VideoGrid: View {
    
    var gridColor : Color
    
    private let gridSize = UIScreen.main.bounds.width/3
    
    private let items : [GridItem] = [

        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: items){
                ForEach(0..<20){_ in
                    Rectangle()
                        .fill(gridColor)
                        .border(.black)
                        .frame(width: gridSize,height: gridSize)
                }
            }
        }
    }
}

struct VideoGrid_Previews: PreviewProvider {
    static var previews: some View {
        VideoGrid(gridColor: Color.gray)
    }
}
