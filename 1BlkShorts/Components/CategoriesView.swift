//
//  CategoriesView.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 25/03/23.
//

import SwiftUI

struct CategoriesView: View {
    var columns: [GridItem] = [
          
            GridItem(.fixed(160)),
            GridItem(.fixed(160))

        ]
    var body: some View {
        ScrollView{
            LazyVStack{
                
                ZStack(alignment: .topTrailing){
                    TabView() {
                        ForEach(0..<3) { index in
                            VideoView()
                                .frame(height: 200)
                                .border(Color.black)
                                .overlay(Color.black.opacity(0.1))
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 200)
                    .cornerRadius(20)
                    
                    Image("wavesOpacity")
                        .frame(width: UIScreen.main.bounds.width-20)
                        .cornerRadius(20)
                
                    
                    Text("Nature")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .bold,design:.serif))
                        .bold()
                        .padding(20)
                }
                
                ZStack(alignment: .topTrailing){
                    TabView() {
                        ForEach(0..<3) { index in
                            VideoView()
                                .frame(height: 200)
                                .border(Color.black)
                                .overlay(Color.black.opacity(0.1))
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 200)
                    .cornerRadius(20)
                    
                    Image("wavesOpacity")
                        .frame(width: UIScreen.main.bounds.width-20)
                        .cornerRadius(20)
                
                    
                    Text("Finance")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .bold,design:.serif))
                        .bold()
                        .padding(20)
                }
                ZStack(alignment: .topTrailing){
                    TabView() {
                        ForEach(0..<3) { index in
                            VideoView()
                                .frame(height: 200)
                                .border(Color.black)
                                .overlay(Color.black.opacity(0.1))
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 200)
                    .cornerRadius(20)
                    
                    Image("wavesOpacity")
                        .frame(width: UIScreen.main.bounds.width-20)
                        .cornerRadius(20)
                
                    
                    Text("Something")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .bold,design:.serif))
                        .bold()
                        .padding(20)
                }
                
                ZStack(alignment: .topTrailing){
                    TabView() {
                        ForEach(0..<3) { index in
                            VideoView()
                                .frame(height: 200)
                                .border(Color.black)
                                .overlay(Color.black.opacity(0.1))
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 200)
                    .cornerRadius(20)
                    
                    Image("wavesOpacity")
                        .frame(width: UIScreen.main.bounds.width-20)
                        .cornerRadius(20)
                
                    
                    Text("Short")
                        .foregroundColor(.white)
                        .font(.system(size: 50,weight: .bold,design:.serif))
                        .bold()
                        .padding(20)
                }
            }
            .padding(.leading,10)
            .padding(.trailing,10)
            .padding(.top,30)
        }
        .background(Color("BlkYellow"))
        
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
