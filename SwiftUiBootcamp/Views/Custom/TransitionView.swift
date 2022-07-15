//
//  TransitionView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct TransitionView: View {
    @State var showView: Bool = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    withAnimation {
                        showView.toggle()
                    }
                }
                Spacer()
            }

            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.asymmetric(
//                        insertion: AnyTransition.move(edge: .leading),
//                        removal: .move(edge: .bottom))
//                    )
//                    .transition(AnyTransition.move(edge: .bottom))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
