//
//  ShapesBootcampView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 29.06.2022.
//

import SwiftUI

struct ShapesBootcampView: View {
    var body: some View {
//       Circle()
//       Capsule()
//       Ellipse()
//       Rectangle()
        RoundedRectangle(cornerRadius: 10)
//            .fill(.blue)
//            .foregroundColor(.blue)
//            .stroke()
//            .stroke(.red, lineWidth: 3)
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 50)
//            .padding(30)
            .frame(width: 200, height: 100)

        
    }
}

struct ShapesBootcampView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcampView()
    }
}
