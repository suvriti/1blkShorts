//
//  BlkVideo.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 19/04/23.
//

import Foundation

struct BlkVideo: Decodable, Encodable{
    var audience : String
    var name : String
    var description : String
    var category : String
    var m3u8url : String
    var url : String
    var status : String
    var timeStamp : Double
    
    init(audience: String, name: String, description: String, category: String, m3u8url: String, url: String, status: String, timeStamp: Double) {
        self.audience = audience
        self.name = name
        self.description = description
        self.category = category
        self.m3u8url = m3u8url
        self.url = url
        self.status = status
        self.timeStamp = timeStamp
    }
}
