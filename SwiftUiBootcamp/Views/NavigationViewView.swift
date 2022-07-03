//
//  NavigationViewView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, World!") {
                    MySecondView()
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }

            .navigationTitle("My Items")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    HStack {
                        NavigationLink("Go1") {
                            MySecondView()
                        }
                        NavigationLink("Go2") {
                            MySecondView()
                        }
                        NavigationLink("Go2") {
                            MySecondView()
                        }
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Button("Press Me2") {
                        print("Pressed")
                    }
                }
            }
        }
    }
}

struct MySecondView: View {
    @Environment(\.presentationMode) var presentationmode
    var body: some View {
        ZStack {
            ScrollView {
                NavigationLink("Show me something!") {
                    SheetsView()
                }

                Spacer()

                Button {
                    presentationmode.wrappedValue.dismiss()
                } label: {
                    Text("Go back to home page")
                }
            }

            .navigationTitle("Second")
            .navigationBarHidden(true)
        }
    }
}

struct NavigationViewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewView()
    }
}
