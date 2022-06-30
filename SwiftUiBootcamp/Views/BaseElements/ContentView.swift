//
//  ContentView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 29.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.title)
            .fontWeight(.bold)
            .padding()
            .foregroundColor(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
