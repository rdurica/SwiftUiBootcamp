//
//  HomepageView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 15.07.2022.
//

import SwiftUI

struct HomepageView: View {
    @StateObject var homepageViewModel: HomepageViewModel = HomepageViewModel()
    var body: some View {
        NavigationView {
            ZStack {
                homepageBackground // Add background

                VStack {
                    profileCard // Show profile info
                    Spacer()
                    logoutButton // Logout button
                }
                .padding()
            }
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}

// MARK: EXTENSIONS

extension HomepageView {
    /// Create background for homepage
    private var homepageBackground: some View {
        LinearGradient(
            colors: [.pink.opacity(0.9), .purple],
            startPoint: .bottom,
            endPoint: .top
        )
        .ignoresSafeArea()
    }

    /// Logout button
    private var logoutButton: some View {
        Button("Logout") {
            homepageViewModel.logout()
        }
        .frame(maxWidth: .infinity)
        .foregroundColor(.purple)
        .padding()
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }

    /// Informations about logged user
    private var profileCard: some View {
        VStack(spacing: 10) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .foregroundColor(.white)
                .shadow(radius: 10)
            Group {
                Text(homepageViewModel.userName ?? "Username")
                    .fontWeight(.heavy)
                Text("\(String(format: "%.0f", homepageViewModel.age)) years old")
                Text(homepageViewModel.gender?.rawValue ?? "Female")
            }
            .foregroundColor(.white)
            .font(.title2)
            .shadow(radius: 10)
        }
    }
}
