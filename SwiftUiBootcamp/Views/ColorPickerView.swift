//
//  ColorPickerView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 09.07.2022.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var backgroundColor: Color = .red
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: false)
                .padding()
                .background(.white)
                .font(.headline)
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
