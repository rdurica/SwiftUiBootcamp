//
//  ScrollViewView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 30.06.2022.
//

import SwiftUI

struct ScrollViewView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVStack {
                ForEach(0 ..< 100) { _ in
                    Rectangle()
                        .frame(height: 100)
                        .foregroundColor(Color(UIColor.systemGray3))
                }
            }
        })
    }
}

struct ScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
