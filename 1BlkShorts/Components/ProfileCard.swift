//
//  ProfileCard.swift
//  1BlkShorts
//
//  Created by Aman Babbar on 26/03/23.
//

import SwiftUI

struct ProfileCard: View {
    var body: some View {
        ZStack{
            Image("pinkBlob")
                .resizable()
                .frame(width: 350,height: 400)
                .cornerRadius(20)
            
            VStack{
                Image("profileImg")
                    .frame(width: 200,height: 200)
                    .clipShape(Circle())
                
                Text("@iamprabhas")
                    .font(.largeTitle)
                    .bold()
                
                Text("I love innovation!!").bold()
                
                HStack{
                    Image(systemName:"mappin")
                    Text("India").bold()
                }
                
            }
        }
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard()
    }
}
