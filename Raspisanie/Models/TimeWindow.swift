//
//  TimeWindow.swift
//  Raspisanie
//
//  Created by Антон Плотников on 10.11.2022.
//

import SwiftUI

struct TimeWindow: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 120, height: 25, alignment: .bottom)
                .cornerRadius(50)
                .foregroundColor(Color("timeWindow"))
            Text("Идет 34 мин")
                .font(.system(size: 16))
        }
        .frame(width: 120, height: 25, alignment: .center)
    }
}

struct TimeWindow_Previews: PreviewProvider {
    static var previews: some View {
        TimeWindow()
    }
}
