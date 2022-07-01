//
//  ListViewView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct ListViewView: View {
    @State var fruits: [String] = ["Apples", "Oranges", "Bananas", "Peaches"]
    var body: some View {
        NavigationView {
            List {
                Section("Fruits") {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    }
                }
            }
        }
    }
}

struct ListViewView_Previews: PreviewProvider {
    static var previews: some View {
        ListViewView()
    }
}
