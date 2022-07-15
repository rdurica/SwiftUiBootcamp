//
//  BackgroundMaterialsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 15.07.2022.
//

import SwiftUI

struct BackgroundMaterialsView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text("Hello")
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial) // .material
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("cat")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct BackgroundMaterialsView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsView()
    }
}
