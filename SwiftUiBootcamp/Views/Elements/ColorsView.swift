//
//  ColorsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 29.06.2022.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                Color.primary
//                Color(uiColor: UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 10, x: 10, y: 10)
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
