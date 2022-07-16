//
//  BadgeView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 16.07.2022.
//

import SwiftUI

// List
// TabView

struct BadgeView: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
                .badge(5)

            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Some text")
                }
                .badge("New")
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Some text2")
                }
        }
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
