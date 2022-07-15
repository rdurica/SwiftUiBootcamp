//
//  ExctractComponentsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct ExctractView: View {
    @State var backgroundColor: Color = Color.blue
    @State var myTitle: String = "Extract components"
    @State var clickCount: Int = 0

    var body: some View {
        ZStack {
            // Background
            backgroundColor
                .ignoresSafeArea()

            // Foreground
            contentlayer
        }
    }

    /// Extracted foregraound layer from ZStack
    var contentlayer: some View {
        VStack(spacing: 20) {
            Text(myTitle)
                .font(.title)
            Text("Count: \(clickCount)")
                .font(.headline)
                .underline()

            HStack(spacing: 30) {
                Button("Button1".uppercased()) {
                    buttonClick(backgroundColor: .green, title: "Button #1")
                }

                Button("Button2".uppercased()) {
                    buttonClick(backgroundColor: .purple, title: "Button #2")
                }
            }
        }
        .foregroundColor(.white)
    }

    /// Extracted function
    func buttonClick(backgroundColor: Color, title: String) {
        self.backgroundColor = backgroundColor
        myTitle = title
        clickCount += 1
    }
}

struct ExctractView_Previews: PreviewProvider {
    static var previews: some View {
        ExctractView()
    }
}
