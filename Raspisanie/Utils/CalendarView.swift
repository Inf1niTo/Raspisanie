//
//  test2.swift
//  Raspisanie
//
//  Created by Антон Плотников on 14.11.2022.
//

import SwiftUI

struct CalendarView: View {
    @State var showingCalendar = true
    @State private var date = Date()
    var closedRange = Calendar.current.date(byAdding: .year, value: -1, to: Date())!
    var body: some View {
        DatePicker("",selection: $date, displayedComponents: .date)
            .frame(width: 100, height: 100, alignment: .center)
        }
    }
    struct CalendarView_Previews: PreviewProvider {
        static var previews: some View {
            CalendarView()
        }
    }

