//
//  TextSelectionView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 16.07.2022.
//

import SwiftUI

struct TextSelectionView: View {
    var body: some View {
        Text("Hello, World!")
            .textSelection(.enabled)
    }
}

struct TextSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionView()
    }
}
