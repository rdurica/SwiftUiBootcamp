//
//  OnboardingViewModel.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 15.07.2022.
//

import SwiftUI

class OnboardingViewModel: ObservableObject {
    @AppStorage("user_name") var userName: String = ""
    @AppStorage("age") var age: Double = 20
    @AppStorage("gender") var gender: GenderEnum = .male
    @AppStorage("is_logged") var isLoggedIn: Bool = false
    @Published var actualOnboardingStep: OnboardingEnum = .welcome
    @Published var signInButtonText: String = "Sign in"
    @Published var showAlert: Bool = false
    @Published var alertMessage: String = ""

    /// Onboarding button and login
    func signInButtonClick() {
        withAnimation(.spring()) {
            switch actualOnboardingStep {
            case .welcome:
                actualOnboardingStep = .addName
                signInButtonText = "Next"
            case .addName:
                if !isUsernameValid() {
                    showAlert(text: "Username must be at least 3 character long")
                    return
                }
                actualOnboardingStep = .addAge
            case .addAge:
                actualOnboardingStep = .chooseGender
                signInButtonText = "Finish"
            case .chooseGender:
                isLoggedIn = true
            }
        }
    }

    /// Check if user input for username is valid
    private func isUsernameValid() -> Bool {
        var isValid = false

        if userName.count >= 3 {
            isValid = true
        }

        return isValid
    }

    /// Toggle alert and send message to user
    func showAlert(text: String) {
        alertMessage = text
        showAlert.toggle()
    }
}
