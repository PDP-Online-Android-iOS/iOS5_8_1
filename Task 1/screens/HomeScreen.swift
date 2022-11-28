//
//  HomeScreen.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 28/11/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        AddStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                    }
                }
                ItemPost(username: "ogabekdev", userPhoto: "ogabekdev", image1: "post1", image2: "post2")
                ItemPost(username: "ogabekdev", userPhoto: "ogabekdev", image1: "post3", image2: "post4")
                ItemPost(username: "ogabekdev", userPhoto: "ogabekdev", image1: "post4", image2: "post6")
                ItemPost(username: "ogabekdev", userPhoto: "ogabekdev", image1: "post5", image2: "post5")
                ItemPost(username: "ogabekdev", userPhoto: "ogabekdev", image1: "post6", image2: "post2")
                ItemPost(username: "ogabekdev", userPhoto: "ogabekdev", image1: "post4", image2: "post3")
            }
            .listStyle(PlainListStyle())
            .navigationBarItems(
                leading: Image(systemName: "camera").foregroundColor(.init(uiColor: .systemRed)),
                trailing: Image(systemName: "person").foregroundColor(.init(uiColor: .systemRed)).onTapGesture {
                    UserDefaults.standard.set(false, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                }
            )
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
