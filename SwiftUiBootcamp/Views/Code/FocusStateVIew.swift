//
//  FocusStateView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 16.07.2022.
//

import SwiftUI

struct FocusStateView: View {
    enum OnboardingFields: Hashable {
        case username
        case password
    }

//    @FocusState private var usernameFocus: Bool
    @State private var username: String = ""

//    @FocusState private var passwordFocus: Bool
    @State private var password: String = ""

    @FocusState private var fieldInFocus: OnboardingFields?

    var body: some View {
        VStack {
            TextField("Add name", text: $username)
                .focused($fieldInFocus, equals: .username)
                .font(.largeTitle)
                .padding()
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)

            SecureField("Add password", text: $password)
                .focused($fieldInFocus, equals: .password)
                .font(.largeTitle)
                .padding()
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            Spacer()

            Button("Sign up") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty

                if usernameIsValid && passwordIsValid {
                    print("Sign up")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameFocus = false
//                    passwordFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameFocus = true
//                    passwordFocus = false
                }
            }
        }
        .padding()
    }
}

struct FocusStateView_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateView()
    }
}
