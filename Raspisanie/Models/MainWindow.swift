//
//  MainWindow.swift
//  Raspisanie
//
//  Created by Антон Плотников on 10.11.2022.
//

import SwiftUI

struct MainWindow: View {
    var body: some View {
        ZStack{
    
            Rectangle()
                .cornerRadius(16)
                .foregroundColor(.white)
                .frame(width: 390, height: 180, alignment: .top)
            VStack{
                Spacer()
                LessonWindow()
                    .padding(.leading,260)
                Text("Менеджмент ")
                    .frame(width: 350, height: 45, alignment: .leading)
                    .padding(.leading, 10)
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                Text("ЛК-507 | Румянцева И.А")
                    .frame(width: 350, height: 25, alignment: .leading)
                    .padding(.leading, 10)
                    .font(.title3)
                    .foregroundColor(.black)
                Text("17.05-18.35")
                    .frame(width: 350, height: 40, alignment: .leading)
                    .padding(.leading, 10)
                    .font(.title3)
                    .foregroundColor(.blue)
                Spacer()
                    .frame(height: 18)
                TimeWindow()
                Spacer()
                    .frame(height: 14)
                    
            }
        }
        .frame(width: 400, height: 230)
    }
}

struct MainWindow_Previews: PreviewProvider {
    static var previews: some View {
        MainWindow()
            .preferredColorScheme(.dark)
    }
}
