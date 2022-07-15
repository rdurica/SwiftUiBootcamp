//
//  EnvironmentObjectView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 14.07.2022.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []

    init() {
        getData()
    }

    func getData() {
        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectView: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
        }
        .environmentObject(viewModel) // Do it carefully, if only 1 or 2 levels use ObservedObject instead
    }
}

struct DetailView: View {
    let selectedItem: String

    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()

            // foreground
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
    }
}

struct FinalView: View {
    // EnvironmentViewModel must exist in ENV otherwise it will crash
    @EnvironmentObject var model: EnvironmentViewModel

    var body: some View {
        ZStack {
            // background
            LinearGradient(
                colors: [.blue, .blue.opacity(0.6)],
                startPoint: .bottom,
                endPoint: .leading
            ).ignoresSafeArea()

            // foreground
            List {
                ForEach(model.dataArray, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .navigationTitle("Final list")
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
//        DetailView(selectedItem: "iPhone")
//        FinalView()
    }
}
