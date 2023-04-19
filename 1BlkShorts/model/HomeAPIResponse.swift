//
//  homeAPIResponse.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 19/04/23.
//

import Foundation

struct HomeAPIResponse : Decodable, Encodable{
    var categrories : [Category]
    var latest : [BlkVideo]
    
    init(categories : [Category], latest : [BlkVideo]) {
        self.categrories = categories
        self.latest = latest
    }
    
}
