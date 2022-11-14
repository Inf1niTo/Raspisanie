//
//  SearchTab.swift
//  Raspisanie
//
//  Created by Антон Плотников on 11.11.2022.
//

import SwiftUI

struct SearchNotes: View {
        @State private var searchText = ""
        var body: some View {
            ZStack{
                
                List {
                    //ForEach(names, id: \.self) {nameT in
                       // HStack{
                            //Text(nameT.capitalized)
                            //Spacer()
                           // Image(systemName: "person.fill")
                               // .foregroundColor(.blue)
                            
                      //  }
                        
                        
                    }
                    
                    
                }
                
                
                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Поиск")
                .navigationTitle("Мои заметки")
            }
            
            
        }
//        var names: [String]{
//            let teachers = listOfName.map { $0.lowercased()}
//
//            return searchText == "" ? teachers : teachers.filter{ $0.contains(searchText.lowercased())}
//        }


struct SearchNotes_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SearchNotes()
        }
        
    }
}
