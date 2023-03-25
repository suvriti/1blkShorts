//
//  ProfileView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        NavigationView{
            VStack{
                ProfileCard()
                VStack {
                    Picker("", selection: $selectedTab) {
                        Text("Posted").tag(0)
                        Text("In Process").tag(1)
                    }
                    .pickerStyle(SegmentedPickerStyle())

                    switch(selectedTab) {
                    case 0: VideoGrid(gridColor: Color.gray)
                    case 1: VideoGrid(gridColor : Color.blue)
                    default:
                        VideoGrid(gridColor: Color.gray)
                    }
                }
            }
            
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
