//
//  BottomTab.swift
//  Raspisanie
//
//  Created by Антон Плотников on 08.11.2022.
//

import SwiftUI

struct BottomTab: View {
    var body: some View {
    ZStack {
        Color(.gray)
            .opacity(0.15)
        HStack{
        
            Button {
                // deistvie
            } label: {
                VStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .font(.system(size: 28))
                    Text("Поиск")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                }
                .padding(EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 0))
            }
            
            Spacer()
            
            Button {
                // deistvie
            } label: {
                VStack{
                    Image(systemName: "person.2")
                        .foregroundColor(.black)
                        .font(.system(size: 28))
                    Text("Новости")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                }
            }
            Spacer()
            
            Button {
                // deistvie
            } label: {
                VStack{
                    Image(systemName: "house")
                        .foregroundColor(.black)
                        .font(.system(size: 28))
                    Text("Главная")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                }
            }
            Spacer()
            
            Button {
                // deistvie
            } label: {
                VStack{
                    Image(systemName: "list.bullet.clipboard")
                        .foregroundColor(.black)
                        .font(.system(size: 28))
                    Text("Заметки")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                }
            }
            Spacer()
            
            Button {
                // deistvie
            } label: {
                VStack{
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                        .font(.system(size: 28))
                    Text("Настройки")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 25))
            }
        }
    }
    .frame(width: .infinity, height: 90)
}
}

struct BottomTab_Previews: PreviewProvider {
    static var previews: some View {
        BottomTab()
    }
}
