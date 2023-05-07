//
//  SwiftUIDatePickerView.swift
//  SwiftUIDesign
//
//  Created by Ferrakkem Bhuiyan on 2023-05-06.
//

import SwiftUI

struct SwiftUIDatePickerView: View {
    @State private var birthdate = Date()
    var body: some View {
        VStack {
            Form {
                // Forever :
                DatePicker("Today's Date: ", selection: $birthdate)
                    .datePickerStyle(.graphical)
                // Past to today date:
                DatePicker("Today's Date: ", selection: $birthdate, in: ...Date(), displayedComponents: .date)
                    .datePickerStyle(.wheel)
                // Today to today Future datea
                DatePicker("Todays's Date: ", selection: $birthdate, in: Date()..., displayedComponents: .date)
                    .datePickerStyle(.compact)
                    .foregroundColor(Color.blue)
            }
        }
    }
}

struct SwiftUIDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDatePickerView()
    }
}
