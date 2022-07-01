//
//  SheetsView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 01.07.2022.
//

import SwiftUI

struct SheetsView: View {
    @State var showSheet: Bool = false

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()

            Button {
                showSheet.toggle()
            } label: {
                Text("Click")
                    .foregroundColor(.green)
                    .padding()
                    .padding(.horizontal, 30)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented: $showSheet) {
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()

            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.title2)
                    .padding(.horizontal, 30)
            }
        }
    }
}

struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
        SheetsView()
//        SecondScreen()
    }
}
