//
//  MyData.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 19/04/23.
//

import Foundation

class MyData: ObservableObject {
    @Published var item = HomeAPIResponse(categories: [
        Category(categoryName: "carrerDevelopmentMonth", videoList: [
            BlkVideo(audience: "ALL", name: "Career Development Month", description: "Awareness about Career Development Month", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/dab4ec29-8d9d-4096-b686-5607ed561d7f/fb72b166-3d0c-4e85-a6c1-9c3d5713.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Career Development Month", description: "Career Development Month", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/dab4ec29-8d9d-4096-b686-5607ed561d7f/fb72b166-3d0c-4e85-a6c1-9c3d5713.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Career Development Month", description: "Career Development Month", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/dab4ec29-8d9d-4096-b686-5607ed561d7f/fb72b166-3d0c-4e85-a6c1-9c3d5713.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Career Development Month", description: "Career Development Month", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/dab4ec29-8d9d-4096-b686-5607ed561d7f/fb72b166-3d0c-4e85-a6c1-9c3d5713.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426)
        ]),
        Category(categoryName: "visit", videoList: [
            BlkVideo(audience: "ALL", name: "Gives Event", description: "Gives Event with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/8bfa5adf-8bd1-45c4-a42d-648186f4cbcc/10e5c9bd-03e1-45dc-8884-e613809e.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165408),
            BlkVideo(audience: "ALL", name: "Gives Event Zumba", description: "Gives Event with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/bc9a37a5-f5b7-45b6-8395-ebb734abe6ff/givesEvent.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426)
        ]),
        Category(categoryName: "visit", videoList: [
            BlkVideo(audience: "ALL", name: "Gives Event", description: "Gives Event with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/8bfa5adf-8bd1-45c4-a42d-648186f4cbcc/10e5c9bd-03e1-45dc-8884-e613809e.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165408),
            BlkVideo(audience: "ALL", name: "Gives Event Zumba", description: "Gives Event with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/bc9a37a5-f5b7-45b6-8395-ebb734abe6ff/givesEvent.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426)
        ]),
        Category(categoryName: "visit", videoList: [
            BlkVideo(audience: "ALL", name: "Gives Event", description: "Gives Event with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/8bfa5adf-8bd1-45c4-a42d-648186f4cbcc/10e5c9bd-03e1-45dc-8884-e613809e.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165408),
            BlkVideo(audience: "ALL", name: "Gives Event Zumba", description: "Gives Event with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/bc9a37a5-f5b7-45b6-8395-ebb734abe6ff/givesEvent.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Rishikesh Outing", description: "Rishikesh Outing with Kip", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/2b1c76e2-9d46-4dfa-bb6f-6cd77a0f4703/video-20230417-121221-8d445e9b.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426)
        ])
        
    ], latest: [])
    
    init() {
//        fetchData()
    }
    
    let customHeaders = ["Authorization": "Basic bmF2c2luZ2g6U3QzcFVwMTI=",
                         "content-type":"application/json"]
    
    func createCustomRequest() -> URLRequest {
        var request = URLRequest(url: URL(string: "https://tst.blackrock.com/ucp/api/v1/hack?key=Global%20Townhall$status=approved")!)
        for (key, value) in customHeaders {
            request.addValue(value, forHTTPHeaderField: key)
        }
        return request
    }
    
    func fetchData() {
        // Make the API request using URLSession
        URLSession.shared.dataTask(with: createCustomRequest()) { data, response, error in
            if (error != nil) {
                print("got error loading data from json : \(error?.localizedDescription ?? "something")")
                return
            }
            if let data = data {
                // Parse the response data into an array of items
                let decoder = JSONDecoder()
                
                do {
                    let decodedData = try decoder.decode(HomeAPIResponse.self, from: data)
                    DispatchQueue.main.async {
                        // Update the items property on the main thread
                        self.item = decodedData
                    }
                }
                catch {
                    print("api error \(error.localizedDescription)")
                }
                
            }
        }.resume()
    }
}

