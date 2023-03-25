//
//  ExploreView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 18/03/23.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            CategoriesView()
                .navigationTitle("Explore")
                .toolbarBackground(.visible, for: .navigationBar)
        }
        .searchable(text: $searchText,placement: .automatic, prompt: "Look for something")
        
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
