//
//  AsyncImageView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 14.07.2022.
//

import SwiftUI

struct AsyncImageView: View {
    let url: URL = URL(string: "https://picsum.photos/400")! // force unwrap for these purposes
    var body: some View {
//        AsyncImage(url: url) { phase in
//            switch phase {
//            case .empty:
//                ProgressView()
//            case let .success(returnedImage):
//                returnedImage
//                    .resizable()
//                    .scaledToFit()
//                    .cornerRadius(20)
//                    .shadow(radius: 10)
//            case .failure:
//                Text("Error")
//            @unknown default:
//                Text("Fatal Error")
//            }
//        }

        AsyncImage(url: url) { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .shadow(radius: 10)

        } placeholder: {
            ProgressView()
        }
        .padding()
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
