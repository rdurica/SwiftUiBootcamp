//
//  TextEditorView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 04.07.2022.
//

import SwiftUI

struct TextEditorView: View {
    @State private var commentText: String = "This is starting text"
    @State private var savedText: String = ""

    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $commentText)
                    .frame(height: 250)
                    .border(.gray, width: 1)
                    .foregroundColor(.blue)
                Button {
                    savedText = commentText
                    commentText = ""
                } label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                Text(savedText)
                Spacer()
            }
            .navigationTitle("Multiline text")
        }
        .padding()
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
