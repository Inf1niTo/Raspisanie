//
//  SwipePage.swift
//  Raspisanie
//
//  Created by Антон Плотников on 09.11.2022.
//

import SwiftUI

struct SwipePage: View {
    var body: some View {
        TabView{
            Text("Саня")
                .font(.system(size: 70))
                
            
            Text("Лох")
                .font(.system(size: 70))
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        
        
    }
                        
}

struct SwipePage_Previews: PreviewProvider {
    static var previews: some View {
        SwipePage()
    }
}
