//
//  DarkModeView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 11.07.2022.
//

import SwiftUI

struct DarkModeView: View {
    // MARK: PROPERTIES

    @Environment(\.colorScheme) var colorScheme

    // MARK: BODY

    /*
     Multiline comment

     1, something
     2, Something else
     */
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                BackgroundLayer()

                // foreground
                ScrollView {
                    VStack(spacing: 20) {
                        Text("This color is primary")
                            .foregroundColor(.primary)

                        Text("This color is secondary")
                            .foregroundColor(.secondary)

                        Text("This color is black")
                            .foregroundColor(.black)

                        Text("This color is white")
                            .foregroundColor(.white)

                        Text("This color is red")
                            .foregroundColor(.red)

                        Text("This color is globaly adaptive")
                            .foregroundColor(Color("CustomColor"))

                        Text("This color is localy adaptive")
                            .foregroundColor(colorScheme == .light ? .green : .yellow)
                    }
                }
                .navigationTitle("Dark mode")
            } // END: ZSTACK
        } // END: NAV
    } // END: BODY

    /// Do something
    ///
    /// This is discussion related to function. we can add multiple line of
    /// text and it is OK.
    ///
    /// ```
    /// someCoolFunction(text: "John", value: 21) -> "Some text"
    /// ```
    /// - Warning: parameters are not used
    /// - Parameters:
    ///   - text: text description
    ///   - value: value description
    /// - Returns: new string
    private func someCoolFunction(text: String, value: Int) -> String {
        return "Some text"
    }
}

/// This is a backround layer
struct BackgroundLayer: View {
    var body: some View {
        Color.blue.ignoresSafeArea()
    }
}

// MARK: PREVIEW

struct DarkModeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeView()
                .preferredColorScheme(.dark)
            DarkModeView()
                .preferredColorScheme(.light)
        }
    }
}
