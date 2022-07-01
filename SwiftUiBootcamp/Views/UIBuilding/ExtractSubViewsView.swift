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

struct ExtractSubViewsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsView()
    }
}
