//
//  TextFieldView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 04.07.2022.
//

import SwiftUI

struct TextFieldView: View {
    @State private var username: String = ""
    @State private var dataArray: [String] = []

    var body: some View {
        NavigationView {
            VStack {
                TextField("Username: ", text: $username)
                    //                .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(.gray.opacity(0.4))
                    .font(.headline)
                    .cornerRadius(10)

                Button {
                    saveUser()
                } label: {
                    Text("Save")
                        .padding(.horizontal, 50)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isUsernameAppropriate() ? .green : .red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }
                .disabled(!isUsernameAppropriate())
                Spacer()
                Section("Users", content: {
                    List {
                        ForEach(dataArray, id: \.self) { user in
                            Text(user)
                        }
                    }
                })
            }
            .padding()
            .navigationTitle("Navigation title")
        }
    }

    /// Validate username input field
    private func isUsernameAppropriate() -> Bool {
        if username.count >= 3 {
            return true
        } else {
            return false
        }
    }

    /// Save input field
    private func saveUser() {
        if !isUsernameAppropriate() {
            return
        }
        dataArray.append(username)
        username = ""
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
