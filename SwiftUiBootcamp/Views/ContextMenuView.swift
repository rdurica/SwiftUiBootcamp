//
//  ContextMenuView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 04.07.2022.
//

import SwiftUI

struct ContextMenuView: View {
    @State private var backgroundColor: Color = .green

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Image(systemName: "house.fill")
                    .font(.title)
                Text("Some text")
                    .shadow(radius: 10)
            }
            .foregroundColor(.white)
            .padding()
            .shadow(radius: 10)
            .contextMenu {
                Button {
                    backgroundColor = .orange
                } label: {
                    Label("Orange", systemImage: "flame.fill")
                }

                Button {
                    backgroundColor = .blue
                } label: {
                    Text("Blue")
                }
            }
        }
    }
}

struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
