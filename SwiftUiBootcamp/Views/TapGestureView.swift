//
//  TapGestureView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 12.07.2022.
//

import SwiftUI

struct TapGestureView: View {
    @State var isOn: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(isOn ? .green : .red)
                .frame(width: 200, height: 200)
                .shadow(
                    color: isOn ? .green : .red,
                    radius: 10
                )

            // Similar then Button action but do not have animation when pressed/held
            Text("On Tap")
                .foregroundColor(.white)
                .padding()
                .frame(width: 200)
                .background(.secondary)
                .cornerRadius(10)
                .onTapGesture {
                    isOn.toggle()
                }
        }
    }
}

struct TapGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureView()
    }
}
