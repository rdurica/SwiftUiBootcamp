//
//  BackgroundAndOverlayView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 30.06.2022.
//

import SwiftUI

struct BackgroundAndOverlayView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.7), radius: 2, x: 0, y: 0)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color("CustomColor"), Color("CustomColor").opacity(0.9)], startPoint: .bottomTrailing,
                            endPoint: .topLeading
                          )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(
                        color: Color("CustomColor").opacity(0.6),
                        radius: 10, x: 5, y: 5
                    )
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("1")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            )
                            .shadow(
                                color: Color("CustomColor").opacity(0.6),
                                radius: 5, x: 5, y: 5
                            )
                        ,alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundAndOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayView()
    }
}
