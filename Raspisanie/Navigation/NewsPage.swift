//
//  NewsPage.swift
//  Raspisanie
//
//  Created by Антон Плотников on 10.11.2022.
//

import SwiftUI

struct NewsPage: View {
    var body: some View {
        ZStack{
            Color(.gray).opacity(0.12)
            Text("news")
        }
        .ignoresSafeArea()
    }
}

struct NewsPage_Previews: PreviewProvider {
    static var previews: some View {
        NewsPage()
    }
}
