//
//  StateDecoratorView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 30.06.2022.
//

import SwiftUI

struct StateDecoratorView: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var clickCount: Int = 0

    var body: some View {
        ZStack {
            // Background
            backgroundColor
                .ignoresSafeArea()

            // Foreground
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(clickCount)")
                    .font(.headline)
                    .underline()

                HStack(spacing: 30) {
                    Button("Button1".uppercased()) {
                        backgroundColor = .blue
                        myTitle = "Button #1"
                        clickCount += 1
                    }

                    Button("Button2".uppercased()) {
                        backgroundColor = .purple
                        myTitle = "Button #2"
                        clickCount += 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateDecoratorView_Previews: PreviewProvider {
    static var previews: some View {
        StateDecoratorView()
    }
}
