//
//  ButtonsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 30.06.2022.
//

import SwiftUI

struct ButtonsView: View {
    @State var title: String = "Title" // Variable can be changed @State

    var body: some View {
        VStack {
            Text(title.uppercased())
                .padding(.vertical, 50)
            // Base button
            Button("Confirm") {
                title = "Button 1 pressed!"
            }
            .accentColor(.red)

            // Advanced with visual style
            Button(action: {
                title = "Button 2 pressed!"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 30)
                    .background(
                        Color.blue
                            .cornerRadius(5)
                            .shadow(radius: 10)
                    )
            })

            // Same as previous with better syntax and shape
            Button {
                title = "Button 3 pressed!"
            } label: {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 77, height: 77)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                            .font(.title)
                    )
            }
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
