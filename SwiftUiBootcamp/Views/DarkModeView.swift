//
//  DarkModeView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 11.07.2022.
//

import SwiftUI

struct DarkModeView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is primary")
                        .foregroundColor(.primary)

                    Text("This color is secondary")
                        .foregroundColor(.secondary)

                    Text("This color is black")
                        .foregroundColor(.black)

                    Text("This color is white")
                        .foregroundColor(.white)

                    Text("This color is red")
                        .foregroundColor(.red)

                    Text("This color is globaly adaptive")
                        .foregroundColor(Color("CustomColor"))

                    Text("This color is localy adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark mode")
        }
    }
}

struct DarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeView()
                .preferredColorScheme(.dark)
            DarkModeView()
                .preferredColorScheme(.light)
        }
    }
}
