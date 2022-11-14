//
//  HomeView.swift
//  Raspisanie
//
//  Created by Антон Сетямин on 08.11.2022.
//

import SwiftUI
struct HomeView: View {
@State private var selectedTab = "One"
@State var showingCalendar = true
    init() {
        UITabBar.appearance().backgroundColor = UIColor.init(displayP3Red: 0.532, green: 0.532, blue: 0.532, alpha: 0.12)
            
    }
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            NavigationView {
                SearchPage()
                    .onTapGesture {
                        selectedTab = "Two"
                    }
            }
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.black)
                                .font(.system(size: 28))
                            Text("Поиск")
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                        }
                    
                    
                    NewsPage()
                        .onTapGesture {
                            selectedTab = "Three"
                        }
            
                        .tabItem {
                            Image(systemName: "person.2")
                                .foregroundColor(.black)
                                .font(.system(size: 28))
                            Text("Новости")
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                                
                        }
                        .badge(5)
        
                    MainPage()
                        .overlay {
                            CalendarView()
                                .padding(.bottom,650)
                                .padding(.leading, 240)
                        }
            
                    .onTapGesture {
                        selectedTab = "One"
                    }
            
                    .tabItem {
                        Image(systemName: "house")
                            .foregroundColor(.black)
                            .font(.system(size: 28))
                        Text("Главная")
                            .font(.system(size: 10))
                            .foregroundColor(.black)
                        
                        
                    }
    
                    .tag("One")
            
            
                        
                        
                    
            NavigationView {
                SearchNotes()
                    .onTapGesture {
                        selectedTab = "Five"
                    }
            }
                            .tabItem {
                                Image(systemName: "list.bullet.clipboard")
                                    .foregroundColor(.black)
                                    .font(.system(size: 28))
                                Text("Заметки")
                                    .font(.system(size: 10))
                                    .foregroundColor(.black)
                        }
            
                    
                    SettingPage()
                        .onTapGesture {
                            selectedTab = "Four"
                        }
            
                        .tabItem {
                        Image(systemName: "gearshape")
                            .foregroundColor(.black)
                            .font(.system(size: 28))
                        Text("Настройки")
                            .font(.system(size: 10))
                            .foregroundColor(.black)
                        }
            
                }
            
        }
    
    }
struct CustomAlertView: View{
    
    @State var date = Date()
    @Binding var show: Bool
    
    var body: some View{
        DatePicker(
            "Start Date",
            selection: $date,
            displayedComponents: [.date]
        )
        .datePickerStyle(.graphical)
        .background(Color.white)
        .border(.black)
        .frame(width: 400, height: 420, alignment: .center)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


