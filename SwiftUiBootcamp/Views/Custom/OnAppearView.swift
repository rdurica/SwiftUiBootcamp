//
//  OnAppearView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 12.07.2022.
//

import SwiftUI

struct OnAppearView: View {
    @State private var myText: String = "Default text"
    @State private var myCount: Int = 0

    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)

                LazyVStack {
                    ForEach(0 ..< 50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(.gray)
                            .frame(height: 200)
                            .shadow(radius: 10)
                            .padding()
                            .onAppear {
                                myCount += 1
                            }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is new text"
                }
            }
            .onDisappear {
                myText = "Ending text."
            }
            .navigationTitle("On appear: \(myCount)")
        }
    }
}

struct OnAppearView_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearView()
    }
}
