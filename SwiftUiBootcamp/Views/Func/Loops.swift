//
//  ForEach.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 30.06.2022.
//

import SwiftUI

struct Loops: View {
    
    let data: [String] = ["Apples", "Bananas"]
    
    var body: some View {
        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 20, height: 20)
//                    Text("Index is \(index)")
//                }
//            }
            ForEach(data.indices) { index in
                Text("New item \(data[index])")
            }
        }
    }
}

struct Loops_Previews: PreviewProvider {
    static var previews: some View {
        Loops()
    }
}
