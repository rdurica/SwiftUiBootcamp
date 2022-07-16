//
//  SwipeActionsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 16.07.2022.
//

import SwiftUI

struct SwipeActionsView: View {
    @State var fruits: [String] = ["Apples", "Oranges", "Bananas", "Peaches"]

    var body: some View {
        VStack {
            List {
                ForEach(fruits, id: \.self) {
                    Text($0.capitalized)
                        .swipeActions(
                            edge: .trailing,
                            allowsFullSwipe: false) {
                            Button("Archive") {
                                //
                            }
                            .tint(.red)
                            Button("Save") {
                                //
                            }
                            .tint(.green)
                            Button("Junk") {
                                //
                            }
                            .tint(.black)
                        }
                        .swipeActions(
                            edge: .leading,
                            allowsFullSwipe: true) {
                            Button("Share") {
                                //
                            }
                            .tint(.red)
                        }
                }
                .onDelete { _ in
                    // Delete
                }
            }
        }
    }
}

struct SwipeActionsView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsView()
    }
}
