//
//  TextBootcampView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 29.06.2022.
//

import SwiftUI

struct TextBootcampView: View {
    var body: some View {
        Text("Hello, World! asdfihaiushdfa sduifauhsduifhasiduhf aisudhfoaiushdfasdh faosiudhf asiudhfasudhfaius hdfiuahsdiufha isudhfoaiushdf aiushdfasiudhf")
            .foregroundColor(.blue)
            .multilineTextAlignment(.leading)
            .padding()
            .border(.blue, width: 1)
            .frame(width: 200, height: 200, alignment: .center)
            .minimumScaleFactor(0.5)
    }
}

struct TextBootcampView_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcampView()
    }
}
