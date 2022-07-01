//
//  BindingView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct BindingView: View {
    @State var backgroundColor: Color = .orange

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()

            VStack {
                BindingButtonView(backgroundColor: $backgroundColor)
            }
        }
    }
}

struct BindingButtonView: View {
    @Binding var backgroundColor: Color

    var body: some View {
        Button {
            backgroundColor = Color.green
        } label: {
            Text("Button")
                .frame(width: 80)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
