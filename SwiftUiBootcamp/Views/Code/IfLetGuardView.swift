//
//  IfLetGuardView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 12.07.2022.
//

import SwiftUI

struct IfLetGuardView: View {
    @State var currentUserId: Int? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Safe coding lession and practice")

                if let text = displayText {
                    Text(text)
                        .font(.title)
                }

                if isLoading {
                    ProgressView()
                }

                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadDataWithGuard()
            }
        }
    }

    /// Execute if value exist else do somethng else
    func loadDataWithLet() {
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the data for user \(userId)!"
                isLoading = false
            }
        } else {
            displayText = "Error, User does not exist..."
        }
    }

    /// Create new variable if exist or exit function immediately
    func loadDataWithGuard() {
        guard let userId = currentUserId else {
            displayText = "Error, User does not exist..."
            return
        }

        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the data for user \(userId)!"
            isLoading = false
        }
    }
}

struct IfLetGuardView_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardView()
    }
}
