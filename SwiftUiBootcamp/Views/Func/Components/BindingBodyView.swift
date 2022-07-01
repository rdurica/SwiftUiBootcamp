//
//  BindingBodyView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct BindingBodyView: View {
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button {
            backgroundColor = Color.green
        } label: {
            Text("Button")
                .frame(width: 80)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
    }
}

struct BindingBodyView_Previews: PreviewProvider {
    static var previews: some View {
        BindingBodyView()
    }
}
