//
//  Category.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 19/04/23.
//

import Foundation

struct Category: Decodable, Encodable{
    var categoryName : String
    var videoList : [BlkVideo]
    
    init(categoryName: String, videoList: [BlkVideo]) {
        self.categoryName = categoryName
        self.videoList = videoList
    }
    
    
}
