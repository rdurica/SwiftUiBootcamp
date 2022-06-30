//
//  Initializators.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 30.06.2022.
//

import SwiftUI

struct Initializators: View {
    let backgroundColor: Color
    let count: Int
    let fruit: Fruit
    
    init(fruit: Fruit, count: Int){
        self.fruit = fruit
        self.count = count
        
        if (fruit == .apple){
            self.backgroundColor = .green
        } else {
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit: String {
        case apple = "Apples"
        case orange = "Oarnges"
    }
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
                .padding(.bottom, 5)
            Text(fruit.rawValue)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(color: backgroundColor.opacity(0.7), radius: 10, x: 5, y: 5)
    }
 
}

struct Initializators_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Initializators(fruit: .orange, count: 10)
            Initializators(fruit: .apple, count: 27)
        }
    }
}
