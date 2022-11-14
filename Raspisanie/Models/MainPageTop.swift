//
//  MainPage.swift
//  Raspisanie
//
//  Created by Антон Плотников on 10.11.2022.
//

import SwiftUI

struct MainPageTop: View {
    var body: some View {
        ZStack{
            //Color(.gray).opacity(0.12)
            VStack{
                HStack{
                    Text(" 1| Прикладная Информатика")
                        .frame(width: 300, height: 18, alignment: .leading)
                        .padding(.leading, 10)
                        .font(.title3)
                    Spacer()
                 }
                    

                HStack {
                    Text("Нечет")
                        .frame(width: 300, height: 18, alignment: .leading)
                        .padding(.leading, 10)
                        .font(.title3)
                    Spacer()
                }
                HStack {
                    Text("Вторник")
                        .frame(width: 300, height: 18, alignment: .leading)
                        .padding(.leading, 10)
                        .font(.title3)
                    Spacer()
                }
                HStack {
                    Text("8 Ноября 2022")
                        .frame(width: 300, height: 18, alignment: .leading)
                        .padding(.leading, 10)
                        .font(.title3)
                    Spacer()
                }
                
            }
            .frame(width: 390, height: 200, alignment: .center)
            .frame(maxHeight: .infinity, alignment: .top)
        }
        .ignoresSafeArea()
    }
}

struct MainPageTop_Previews: PreviewProvider {
    static var previews: some View {
        MainPageTop()
    }
}

