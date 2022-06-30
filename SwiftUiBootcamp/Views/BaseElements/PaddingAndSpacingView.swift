//
//  PaddingAndSpacingView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 30.06.2022.
//

import SwiftUI

struct PaddingAndSpacingView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .padding(.bottom, 10)
                Text("Description of the Hello world text. This is multiline text. Just in case one more sentence.")
            }
            .padding()
            .padding(.horizontal, 20)
            .background(
                Color(uiColor: UIColor.systemGray4)
                    .cornerRadius(10)
                    .padding(.horizontal, 25)
                    .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            ).padding(.bottom, 50)
            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: 100, height: 100)
                Spacer(minLength: 0) // Pushing elements from positions
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                Spacer()
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
            }.shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 5)
            Spacer()
        }
    }
}

struct PaddingAndSpacingView_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacingView()
    }
}
