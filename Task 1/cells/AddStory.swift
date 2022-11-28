//
//  AddStory.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("ogabekdev")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(35)
                
                Image(systemName: "plus.circle.fill").foregroundColor(Color.cyan)
            }
            Text("ogabekdev")
                .font(.system(size: 13.5))
        }.padding(.trailing, 10).frame(height: 100)
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}
