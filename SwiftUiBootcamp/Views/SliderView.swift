//
//  SliderView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 10.07.2022.
//

import SwiftUI

struct SliderView: View {
    @State private var sliderValue: Double = 3
    var body: some View {
        VStack {
            Text(String(format: "%.2f", sliderValue))
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0 ... 10)
            Slider(value: $sliderValue, in: 1 ... 10, step: 0.5)
                .accentColor(.red)
        }.padding()
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
