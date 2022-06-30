//
//  StacksView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 30.06.2022.
//

import SwiftUI

struct StacksView: View {
    // VStack
    // HStack
    // ZStack
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
               .fill(.red)
               .frame(width: 150, height: 150)
               .overlay(
                HStack {
                        Rectangle()
                           .fill(.blue)
                           .frame(width: 50, height: 50)
                        Rectangle()
                           .fill(.orange)
                           .frame(width: 50, height: 50)
                    }
               )

            Rectangle()
               .fill(.green)
               .frame(width: 125, height: 125)
            Rectangle()
               .fill(.orange)
               .frame(width: 100, height: 100)
        }
    }
}

struct StacksView_Previews: PreviewProvider {
    static var previews: some View {
        StacksView()
    }
}
