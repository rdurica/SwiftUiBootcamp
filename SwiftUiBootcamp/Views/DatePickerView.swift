//
//  DatePickerView.swift
//  SwiftUiBootcamp
//
//  Created by Robert Ďurica on 09.07.2022.
//

import SwiftUI

struct DatePickerView: View {
    @State private var selectedDate: Date = Date()
    private let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()

    private let endDate: Date = Date()

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }

    var body: some View {
//        DatePicker("Select a date", selection: $selectedDate)
//        DatePicker("Select a date",
//                   selection: $selectedDate,
//                   displayedComponents: [.date])
//                    .datePickerStyle(.graphical)
        VStack {
            VStack {
                Text("Selected date is:")
                Text(dateFormatter.string(from: selectedDate))
                    .font(.title3)
            }
            DatePicker("Select a date",
                       selection: $selectedDate,
                       in: startingDate ... endDate,
                       displayedComponents: [.date])
                .accentColor(.red)
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
