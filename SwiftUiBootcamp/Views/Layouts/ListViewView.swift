//
//  ListViewView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct ListViewView: View {
    @State var fruits: [String] = ["Apples", "Oranges", "Bananas", "Peaches"]
    @State var vegetables: [String] = ["Tomato", "Potatoes", "Carrots"]

    var body: some View {
        NavigationView {
            List {
                Section(content: {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onDelete { indexSet in
                        fruits.remove(atOffsets: indexSet)
                    }

                    /// If function have same parameters no need to pass them
                    .onMove(perform: move)
                    .listRowBackground(Color.orange)
                    .padding(.vertical, 10)

                }, header: { // You can customise header too
                    HStack {
                        Text("Fruits")
                            .foregroundColor(.orange)
                        Image(systemName: "flame.fill")
                    }
                    .foregroundColor(.orange)

                })
                Section("Vegetables") {
                    ForEach(vegetables, id: \.self) { veggies in
                        Text(veggies)
                    }
                    .listRowBackground(Color.green)
                    .padding(.vertical, 10)
                }
            }
            .accentColor(.purple)
//            .listStyle(GroupedListStyle())
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery list")
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    EditButton()
                }
                ToolbarItem(placement: .automatic) {
                    addButton
                }
            }
            .accentColor(.red)
        }
    }

    /**
     Add button which add Coconut into fruits array
     */
    var addButton: some View {
        Button("Add") {
            fruits.append("Coconut")
        }
    }

    /**
     Move event which have same parameter types as .onMove event
     */
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct ListViewView_Previews: PreviewProvider {
    static var previews: some View {
        ListViewView()
    }
}
