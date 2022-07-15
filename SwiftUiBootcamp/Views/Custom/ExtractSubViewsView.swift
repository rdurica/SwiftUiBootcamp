//
//  ExtractSubViewsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct ExtractSubViewsView: View {
    var body: some View {
        ZStack {
            Color("CustomColor").opacity(0.8).ignoresSafeArea()

            HStack {
                /// Extracted subview into separated file
                MySubView(buttonColor: .white)
                Spacer()
                MySubView(buttonColor: .secondary)
            }.padding(.horizontal, 30)
        }
    }
}

struct MySubView: View {
    @State var buttonColor: Color = .black
    @State var clickCount: Int = 0

    var body: some View {
        VStack {
            Text("\(clickCount)$")
                .foregroundColor((buttonColor == .black) ? Color.black : Color.white)
                .font(.title)

            Button {
                clickCount += 1
            } label: {
                Text("Press me!")
                    .padding()
                    .background(buttonColor)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10)
            }
        }
    }
}

struct ExtractSubViewsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsView()
    }
}
