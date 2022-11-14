//
//  MainPage.swift
//  Raspisanie
//
//  Created by Антон Плотников on 10.11.2022.
//

import SwiftUI
struct MainPage: View {

    let num: [Int] = [1,2,3,4]
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    MainPageTop()
                        .frame(width: 450, height: 108, alignment: .top)
                    
                    
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 0){
                            ForEach(num, id: \.self){ lession in MainWindow()
                            }
                        }
                    }
                }

                    
                }
                .background(Color.gray.opacity(0.2))
            
            }
        
            
        }
        
    }

    
    struct MainPage_Previews: PreviewProvider {
        static var previews: some View {
            MainPage()
        }
    }
