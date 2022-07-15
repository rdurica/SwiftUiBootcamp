//
//  AlertView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 04.07.2022.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Button("Click me to show alert!") {
                    showAlert.toggle()
                }
            }
            .alert("Error", isPresented: $showAlert, actions: {
                Button("Delete", role: .destructive) {
                    // Do something
                }
            }) {
                Text("Oops... Something went wrong.")
            }
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
