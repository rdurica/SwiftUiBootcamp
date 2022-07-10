//
//  StepperView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 10.07.2022.
//

import SwiftUI

struct StepperView: View {
    @State private var stepperValue: Int = 10
    var body: some View {
        VStack {
            Text(String(stepperValue))
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(.red)
                .foregroundColor(.white)
            Spacer()

            Stepper("Stepper #1", value: $stepperValue)

            Stepper("Stepper #2") {
                // Increment
                stepperValue += 2
            } onDecrement: {
                // Decrement
                stepperValue -= 2
            }

        }.padding()
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
