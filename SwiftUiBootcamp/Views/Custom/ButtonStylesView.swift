//
//  ButtonStylesView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 16.07.2022.
//

import SwiftUI

struct ButtonStylesView: View {
    var body: some View {
        VStack {
            Button("Button title") {}
//            .buttonStyle(.plain)
//            .buttonStyle(.bordered)
                .buttonStyle(.borderedProminent)
//                .buttonStyle(.borderless)
                .controlSize(.large)
                .buttonBorderShape(.capsule)
        }
        .padding()
    }
}

struct ButtonStylesView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesView()
    }
}
