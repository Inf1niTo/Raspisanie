//
//  ProfilePage.swift
//  Raspisanie
//
//  Created by Антон Плотников on 14.11.2022.
//

import SwiftUI

struct ProfilePage: View {
    @State var selectionN: String = ""
    @State var selectionK: String = ""
    @State var selectionG: String = ""
    let napravlenie: [String] = ["1","2", "3", "4" ]
    let kyrs: [String] = ["ИИС","ИОМ", "ИЭМ" ]
    let gryppa: [String] = ["1.0 Прикладная информатика","2.0 Прикладная информатика", "3.0 Прикладная информатика" ]
    var body: some View {
        ZStack{
            VStack{
                Text("Выберите вашу группу")
                    .padding(.bottom,80)
                    .font(.system(size: 30, weight: .semibold))
                
                Text("Курс")
                    .font(.system(size: 28, weight: .bold))
                    .frame(width: 370,alignment: .leading)
                    //.padding()
                
                Menu {
                    Picker(selection: $selectionN, label: EmptyView()) {
                        ForEach(napravlenie, id: \.self) {option in
                            Text (option)
                                .tag (1)
                        }
                    }
                } label: {
                    customLabel_1
                }
                
                Text("Направление")
                    .font(.system(size: 28, weight: .bold))
                    .frame(width: 370,alignment: .leading)
                    .padding(.bottom,28)
                
                Menu {
                    Picker(selection: $selectionK, label: EmptyView()) {
                        ForEach(kyrs, id: \.self) {option in
                            Text (option)
                                .tag (2)
                        }
                    }
                } label: {
                    customLabel_2
                }
                
                Text("Группа")
                    .font(.system(size: 28, weight: .bold))
                    .frame(width: 370,alignment: .leading)
                    .padding(.bottom,28)
                
                Menu {
                    Picker(selection: $selectionG, label: EmptyView()) {
                        ForEach(gryppa, id: \.self) {option in
                            Text (option)
                                .tag (3)
                        }
                    }
                } label: {
                    customLabel_3
                }
                .padding(.bottom,40)
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width: 190, height: 50)
                        .cornerRadius(8)
                        .foregroundColor(Color("backgroundProfile"))
                        .overlay {
                            Text("СОХРАНИТЬ")
                                .font(.system(size: 28).bold())
                                .foregroundColor(Color("textProfile"))
                        }
                }
                .frame( height: 100, alignment: .center)
                
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width: 140, height: 50)
                        .cornerRadius(8)
                        .foregroundColor(Color("customBlue"))
                        .overlay {
                            Text("НАЗАД")
                                .font(.system(size: 28).bold())
                                .foregroundColor(.white)
                        }
                }
                .frame( height: 30, alignment: .center)

            }
            .frame(height: 900)
        }
    }
    
    
    var customLabel_1: some View {
        HStack {
            Image(systemName: "book")
            Spacer()
            Text(selectionN)
            Spacer()
            Text("⌵")
                .offset(y: -4)
        }
        .foregroundColor(.black)
        .font(.title)
        .padding(.bottom,20)
        .padding()
        .frame(height: 50)
        .cornerRadius(16)
    }
    var customLabel_2: some View {
        HStack {
            Image(systemName: "book")
            Spacer()
            Text(selectionK)
            Spacer()
            Text("⌵")
                .offset(y: -4)
        }
        .foregroundColor(.black)
        .padding(.bottom,20)
        .font(.title)
        .padding()
        .frame(height: 50)
        .cornerRadius(16)
    }
    var customLabel_3: some View {
        HStack {
            Image(systemName: "book")
            Spacer()
            Text(selectionG)
            Spacer()
            Text("⌵")
                .offset(y: -4)
        }
        .foregroundColor(.black)
        .font(.title)
        .padding()
        .frame(height: 50)
        .padding(.bottom,20)
        .cornerRadius(16)
    }
}
    struct ProfilePage_Previews: PreviewProvider {
        static var previews: some View {
            ProfilePage()
        }
    }


