//
//  ModelCustom.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 13.07.2022.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: UUID = UUID()
    let name: String
    let username: String
    let followerCount: Int
    let isVerified: Bool
}

struct CustomModelView: View {
    @State var users: [UserModel] = [
        UserModel(name: "John", username: "joe123", followerCount: 256, isVerified: false),
        UserModel(name: "Emily", username: "emily222", followerCount: 1024, isVerified: true),
        UserModel(name: "Samantha", username: "Sam77", followerCount: 512, isVerified: true),
        UserModel(name: "Josh", username: "Josh23", followerCount: 128, isVerified: false),
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.name)
                                .font(.headline)
                            Text("@ \(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.green)
                        }

                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }.padding(.vertical, 10)
                }
            }
            .navigationTitle("All users")
        }
    }
}

struct CustomModelView_Previews: PreviewProvider {
    static var previews: some View {
        CustomModelView()
    }
}
