//
//  IconsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 29.06.2022.
//

import SwiftUI

struct IconsView: View {
    var body: some View {
        Image(systemName: "trash.slash.circle")
//            .renderingMode(.original)
//            .font(.largeTitle)
//            .font(.system(size: 200))
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .foregroundColor(Color.red)
            .shadow(color: Color.red.opacity(0.4), radius: 10, x: 10, y: 10)
            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsView_Previews: PreviewProvider {
    static var previews: some View {
        IconsView()
    }
}
