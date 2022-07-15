//
//  AppStorageView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 14.07.2022.
//

import SwiftUI

struct AppStorageView: View {
//    @AppStorage("name") var currentUserName: String?

    // Can be added default value. Only added if nil
    @AppStorage("name") var currentUserName: String = "John"

    var body: some View {
        VStack(spacing: 20) {
            if let name = currentUserName {
                Text(name)
            }

            Button("Save") {
                currentUserName = "Emily" // Automatically save to AppStorage
            }
        }
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
