//
//  SwiftUiBootcampApp.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 29.06.2022.
//

import SwiftUI

@main
struct SwiftUiBootcampApp: App {
    @AppStorage("is_logged") var isLoggedIn: Bool = false

    var body: some Scene {
        WindowGroup {
            // Redirect if user not logged in
            if !isLoggedIn {
                OnboardingView()
            } else {
                HomepageView()
            }
        }
    }
}
