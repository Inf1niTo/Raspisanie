//
//  LessonWindow.swift
//  Raspisanie
//
//  Created by Антон Плотников on 10.11.2022.
//

import SwiftUI

struct LessonWindow: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 140, height: 25, alignment: .bottom)
                .cornerRadius(4)
                .foregroundColor(Color("lessonLab"))
            Text("Лабораторная")
                .font(.system(size: 18))
                .foregroundColor(.white)
        }
        .frame(width: 120, height: 25, alignment: .center)
    }
}

struct LessonWindow_Previews: PreviewProvider {
    static var previews: some View {
        LessonWindow()
    }
}
