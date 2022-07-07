//
//  ToggleView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 07.07.2022.
//

import SwiftUI

struct ToggleView: View {
    @State private var isToggleON: Bool = true

    var body: some View {
        VStack {
            HStack {
                Text(isToggleON ? "Online" : "Offline")
                    .foregroundColor(isToggleON ? Color.green : Color.red)
            }
            Toggle(isOn: $isToggleON) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            Spacer()
        }
        .padding()
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
