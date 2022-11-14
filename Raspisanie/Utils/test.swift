//
//  test.swift
//  Raspisanie
//
//  Created by Антон Плотников on 14.11.2022.
//

import SwiftUI

struct test: View {
    
    @State var selectionN: String = ""
    @State var selectionK: String = ""
    @State var selectionG: String = ""
    let napravlenie: [String] = ["","1","2", "3" ]
    let kyrs: [String] = ["","ИИС","ИОМ", "ИЭМ" ]
    let gryppa: [String] = ["","pi1","pi2", "pi3" ]
    var body: some View {
        Menu {
            Picker(selection: $selectionN, label: EmptyView()) {
                ForEach(kyrs, id: \.self) {option in
                    Text (option)
                        .tag (1)
                }
            }
        } label: {
            customLabel
        }
    }

    var customLabel: some View {
        HStack {
            Image(systemName: "paperplane")
            Text(selectionN)
            Spacer()
            Text("⌵")
                .offset(y: -4)
        }
        .foregroundColor(.black)
        .font(.title)
        .padding()
        .frame(height: 32)
        //.background(Color.blue)
        .cornerRadius(16)
    }

}


struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
