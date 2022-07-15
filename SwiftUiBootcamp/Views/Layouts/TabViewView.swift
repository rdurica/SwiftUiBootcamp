//
//  TabViewView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 11.07.2022.
//

import SwiftUI

struct TabViewView: View {
    @State private var selectedTab: Int = 0
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill",
    ]
    var body: some View {
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("Profile tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }

//        TabView {
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.green)
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.blue)
//        }

        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .background(
                        RadialGradient(colors: [.red, .blue], center: .center, startRadius: 5, endRadius: 300)
                    )
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}

struct HomeView: View {
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()

            VStack {
                Text("Home tab")
                    .font(.largeTitle)

                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .padding()
                        .background(.white)
                        .foregroundColor(.red)
                        .cornerRadius(10)
                }
            }

        }.foregroundColor(.white)
    }
}
