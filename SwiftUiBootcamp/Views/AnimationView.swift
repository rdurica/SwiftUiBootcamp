//
//  AnimationView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct AnimationView: View {
    @State var isAnimated: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: isAnimated ? 150 : 0)
                .fill(.green)
                .frame(width: isAnimated ? 300 : 100, height: isAnimated ? 300 : 100)
            Spacer()
            HStack(spacing: 30) {
                Button("Button1".uppercased()) {
                    withAnimation(Animation.default) {
                        isAnimated.toggle()
                    }
                }
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
