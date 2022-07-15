//
//  HomepageViewModel.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 15.07.2022.
//

import SwiftUI

class HomepageViewModel: ObservableObject {
    @AppStorage("user_name") var userName: String?
    @AppStorage("age") var age: Double = 20
    @AppStorage("gender") var gender: GenderEnum?
    @AppStorage("is_logged") var isLoggedIn: Bool = false

    // Logout user and clear @AppStorage
    func logout() {
        isLoggedIn = false
        gender = nil
        userName = nil
        age = 20
    }
}
