//
//  ItemStory.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        
        VStack {
            Image("ogabekdev")
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.init(uiColor: .systemRed), lineWidth: 2))
            Text("ogabekdev")
                .font(.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 100)
        
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
