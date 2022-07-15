//
//  PickerView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 08.07.2022.
//

import SwiftUI

struct PickerView: View {
    @State private var selection: String = "1"

    ///  From UIKit
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .blue

        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }

    var body: some View {
        VStack {
            Text("Selected age: \(selection)")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
            Spacer()
            Picker(selection: $selection) {
                ForEach(18 ..< 25) { age in
                    Text(String(age)).tag(String(age))
                }
            } label: {
                Text("Picker")
            }
//            .pickerStyle(WheelPickerStyle())
            .pickerStyle(SegmentedPickerStyle())
//            .background(.orange)
            Spacer()
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
