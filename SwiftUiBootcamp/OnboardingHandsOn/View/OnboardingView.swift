//
//  OnboardingView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 15.07.2022.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject var onboardingViewModel: OnboardingViewModel = OnboardingViewModel()

    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))

    var body: some View {
        ZStack {
            homepageBackground

            // Navigate trough onboarding screens
            ZStack {
                switch onboardingViewModel.actualOnboardingStep {
                case .welcome:
                    welcomeSection
                        .transition(transition)
                case .addName:
                    addNameSection
                        .transition(transition)
                case .addAge:
                    addAgeSection
                        .transition(transition)
                case .chooseGender:
                    chooseGenderSection
                }
            }

            VStack {
                Spacer()
                signInButton
            }
            .padding()
        }
        .alert(onboardingViewModel.alertMessage, isPresented: $onboardingViewModel.showAlert) {
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

// MARK: COMPONENTS

extension OnboardingView {
    /// Sign in button
    private var signInButton: some View {
        Text(onboardingViewModel.signInButtonText)
            .font(.headline)
            .foregroundColor(.pink)
            .frame(width: 150, height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .shadow(radius: 10)
            .onTapGesture {
                onboardingViewModel.signInButtonClick()
            }
    }

    /// Page background
    private var homepageBackground: some View {
        LinearGradient(
            colors: [.pink.opacity(0.9), .purple],
            startPoint: .bottom,
            endPoint: .top
        )
        .ignoresSafeArea()
    }

    /// Initial onboarding screen
    private var welcomeSection: some View {
        VStack(spacing: 20.0) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }

    /// Fill username
    private var addNameSection: some View {
        VStack(spacing: 20.0) {
            Spacer()

            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Username", text: onboardingViewModel.$userName)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(5)

            Spacer()
            Spacer()
        }
        .padding(30)
    }

    /// Choose Age
    private var addAgeSection: some View {
        VStack(spacing: 20.0) {
            Spacer()
            Text("Select your age")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", onboardingViewModel.age))")
                .font(.title)
                .foregroundColor(.white)
            Slider(value: onboardingViewModel.$age, in: 18 ... 100, step: 1)
                .accentColor(.white)

            Spacer()
            Spacer()
        }
        .padding(30)
    }

    /// Choose Gender
    private var chooseGenderSection: some View {
        VStack(spacing: 20.0) {
            Spacer()
            Text("Whats your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: onboardingViewModel.$gender, label: Text("Pick a value")) {
                Text(GenderEnum.male.rawValue).tag(GenderEnum.male)
                Text(GenderEnum.female.rawValue).tag(GenderEnum.female)
                Text(GenderEnum.nonBinary.rawValue).tag(GenderEnum.nonBinary)
            }
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}
