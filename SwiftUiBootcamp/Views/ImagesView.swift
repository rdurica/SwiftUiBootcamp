//
//  ImagesView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 29.06.2022.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        Image("cat")
//            .renderingMode(.template) // In case of transaparent background, Set it in assets folder to globaly set this parameter
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(50)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 50)
//                Ellipse()
//            )
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
