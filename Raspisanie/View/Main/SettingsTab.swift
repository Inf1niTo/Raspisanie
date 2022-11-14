//
//  settingsTab.swift
//  Raspisanie
//
//  Created by Антон Плотников on 08.11.2022.
//

import SwiftUI

struct SettingsTab: View {
    var body: some View {
        ZStack{
            HStack{
                VStack{
                    Button {
                        
                    } label: {
                        VStack{
                            Image(systemName: "gearshape")
                                .font(.system(size: 42))
                            Text("Группа")
                        }
                        .frame(width: 150, height: 150, alignment: .center)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .frame(width: 110, height: 110, alignment: .leading)
                        }
                        .foregroundColor(.black)
                    }
                    Button {
                        
                    } label: {
                        VStack{
                            Image(systemName: "gearshape")
                                .font(.system(size: 42))
                            Text("Помощь")
                        }
                        .frame(width: 150, height: 150, alignment: .center)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .frame(width: 110, height: 110, alignment: .leading)
                        }
                        .foregroundColor(.black)
                    }

                }
                VStack{
                    
                    Button {
                        
                    } label: {
                        VStack{
                            Image(systemName: "gearshape")
                                .font(.system(size: 42))
                            Text("Настройки")
                        }
                        .frame(width: 150, height: 150, alignment: .center)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .frame(width: 110, height: 110, alignment: .leading)
                        }
                        .foregroundColor(.black)
                    }
                    Button {
                        
                    } label: {
                        VStack{
                            Image(systemName: "gearshape")
                                .font(.system(size: 42))
                            Text("Профиль")
                        }
                        .frame(width: 150, height: 150, alignment: .center)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .frame(width: 110, height: 110, alignment: .leading)
                        }
                        .foregroundColor(.black)
                    }
                
                }
            }
        }
        .frame(width: 400, height: 400, alignment: .center)
    }
}

struct SettingsTab_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTab()
    }
}

