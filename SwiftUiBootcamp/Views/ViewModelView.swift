//
//  ViewModelView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 13.07.2022.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    // Similar than @State but for class, on change notify object  -> USE THIS ON CREATION / INIT
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false

    init() {
        getFruits()
    }

    func getFruits() {
        let apples: FruitModel = FruitModel(name: "Apples", count: 7)
        let oranges: FruitModel = FruitModel(name: "Oranges", count: 0)
        let pineapples: FruitModel = FruitModel(name: "Pineapples", count: 4)

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(apples)
            self.fruits.append(oranges)
            self.fruits.append(pineapples)
            self.isLoading = false
        }
    }

    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ViewModelView: View {
    // Observe object for changes -> USE THIS ON SUBVIEWS
    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()

    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.green)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }.padding()
                    }
//                    .onDelete { indexSet in
//                        deleteFruit(index: indexSet)
//                    }

                    // Same as before. func have exact same parameters so do not need to pass them
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle("Fruit list")
            .navigationBarItems(trailing:
                NavigationLink(
                    destination: SecondScreenView(fruitViewModel: fruitViewModel),
                    label: {
                        Image(systemName: "arrow.right")
                    })
            )
        }
    }
}

struct SecondScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("<- Go back")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
        }
    }
}

struct ViewModelView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelView()
//        SecondScreenView()
    }
}
