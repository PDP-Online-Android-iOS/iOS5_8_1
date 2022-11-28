//
//  ItemPost.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct ItemPost: View {
    
    var username: String = "ogabekdev"
    var userPhoto: String = "ogabekdev"
    var image1: String = "post3"
    var image2: String = "post4"
    
    var body: some View {
        
        VStack(alignment: .leading) {
            // Header
            HStack {
                Image(userPhoto)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                
                HStack {
                    Text(username)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    Text("follow")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color(uiColor: UIColor.systemRed))
                    Spacer()
                    Image(systemName: "location")
                }
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            
            // Post Image
            HStack {
                Image(image1)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.size.width / 2, height: UIScreen.main.bounds.size.width / 2)
                
                Image(image2)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.size.width / 2, height: UIScreen.main.bounds.size.width / 2)
            }
            
            //Bar
            HStack(alignment: .center) {
                Image(systemName: "heart.fill")
                    .frame(width: 25, height: 25)
                    .scaledToFill()
                
                Image(systemName: "text.bubble.fill")
                    .frame(width: 25, height: 25)
                    .scaledToFill()
                
                Image(systemName: "arrowshape.turn.up.backward.fill")
                    .frame(width: 25, height: 25)
                    .scaledToFill()
                
                Spacer()
                
                Image(systemName: "bookmark.fill")
                    .frame(width: 25, height: 25)
                    .scaledToFill()
            }
            .padding(.trailing, 10)
            .padding(.leading, 10)
            
            VStack(alignment: .leading) {
                Text("Liked by ogabekdev and 3M others")
                    .font(.system(size: 13.5))
                    .padding(.bottom, 2.5)
                
                Text("OgabekDev I liked this views. If you have, Please share with us. I will also share to you whatever you want. Good luck bro")
                    .font(.system(size: 13.5))
                    .lineLimit(1)
                    .foregroundColor(.black).opacity(0.5)
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
            
        }
        
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
