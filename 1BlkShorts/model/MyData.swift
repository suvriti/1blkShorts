//
//  MyData.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 19/04/23.
//

import Foundation

class MyData: ObservableObject {
    @Published var item = HomeAPIResponse(categories: [
         Category(categoryName: "apgAllHands", videoList: [
            BlkVideo(audience: "ALL", name: "APG All Hands", description: "Lance talks about his views on AI", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/e694476d-08e3-42e0-834d-b9fb8090e10a/APG All Hands Part-1.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "APG All Hands", description: "Lance introduces Hackathon", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/a56c39ae-9d0c-4def-878e-c3f69ccfd3e2/APG All Hands Part-2.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165428),
            BlkVideo(audience: "ALL", name: "APG All Hands", description: "JP talks about BlackRock Academies", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/4c0ff08d-dbb4-45bb-af24-de21982db166/APG All Hands BlackRock Academie.ism/manifest(format=m3u8-cmaf)", url: "", status: "new", timeStamp: 1681842165476)
        ]),
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
        Category(categoryName: "townhall", videoList: [
            BlkVideo(audience: "ALL", name: "Global Townhall", description: "Global Townhall", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/c359a9c5-0f91-4cb7-8560-07a5448a418b/EII Global Townhall-1.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165408),
            BlkVideo(audience: "ALL", name: "Global Townhall", description: " FIG Global Townhall", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/27cc68fb-2827-4f7b-b9eb-1ed41d406ba4/FIG-Global-Town-Hall.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426)
        ]),
        Category(categoryName: "internExperience", videoList: [
            BlkVideo(audience: "ALL", name: "Intern Experience", description: "Intern Experience by Pamitha", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/23fb5ba6-a102-4cd6-b013-ed0110a48c67/video-20230418-112626-0f2915de.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165408),
            BlkVideo(audience: "ALL", name: "Intern Experience", description: "Intern Experience by Laksh", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/cbcb2ea8-eb2b-462f-b90e-0296993290f8/video-20230418-113037-661a1494.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426)
        ]),
        Category(categoryName: "health&Safety", videoList: [
            BlkVideo(audience: "ALL", name: "Health and Safety", description: "Physical Therapy Introduction", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/52109c46-f0e4-479d-b72b-fb011c7d3dfa/IMG_3751.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165408),
            BlkVideo(audience: "ALL", name: "Health and Safety", description: "Introduction to health center", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/1a9cf755-726f-4b60-b9fc-d93dc00f2494/IMG_3759.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165526),
            BlkVideo(audience: "ALL", name: "Health and Safety", description: "Importance of First Aid", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/bb6972b4-a440-4bc4-af30-07c552faa366/video-20230419-114204-3ba509d8.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426),
            BlkVideo(audience: "ALL", name: "Health and Safety", description: "Employee Experience", category: "", m3u8url: "https://hack2023ms-inct.streaming.media.azure.net/5504eef3-f233-4a2a-8e47-8b8dccdfd307/video-20230419-110942-20165620.ism/manifest(format=m3u8-cmaf)", url: "", status: "approved", timeStamp: 1681842165426)
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

