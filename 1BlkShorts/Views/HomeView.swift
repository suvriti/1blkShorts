//
//  HomeView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            Text("HomeView")
                .navigationTitle("Home")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
