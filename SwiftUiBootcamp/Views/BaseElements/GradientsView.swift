//
//  GradientsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 29.06.2022.
//

import SwiftUI

struct GradientsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color("CustomColor")
                LinearGradient(
                    colors: [Color("CustomColor"), Color.blue],
                    startPoint: .bottom,
                    endPoint: .topLeading
                )
//                RadialGradient(
//                    colors: [Color("CustomColor"), Color.blue],
//                    center: .center,
//                    startRadius: 10,
//                    endRadius: 100
//                )
//                AngularGradient(
//                    gradient: Gradient(colors: [Color("CustomColor"), Color.blue]),
//                    center: .topLeading,
//                    angle: .degrees(180)
//                )
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsView_Previews: PreviewProvider {
    static var previews: some View {
        GradientsView()
    }
}
