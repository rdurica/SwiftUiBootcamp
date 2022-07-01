//
//  MySubView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI


struct MySubView: View {
    @State var buttonColor: Color = .black
    @State var clickCount: Int = 0
    
    var body: some View {
        VStack{
            Text("\(clickCount)$")
                .foregroundColor((buttonColor == .black) ? Color.black : Color.white)
                .font(.title)
            
            Button {
                clickCount += 1
            } label: {
                Text("Press me!")
                    .padding()
                    .background(buttonColor)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 10, y: 10)
            }
            
        }
    }
}
struct MySubView_Previews: PreviewProvider {
    static var previews: some View {
        MySubView()
    }
}
