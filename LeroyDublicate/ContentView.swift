//
//  ContentView.swift
//  LeroyDublicate
//
//  Created by Tatyana on 17.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                NavigationView {
                VStack {
                    NavigationBar()
                    
                    ScrollView(.vertical) {
                        MainScrollView()
                        
                        NameLine(title: "Предложеие ограничено")
                        
                        SacondaryScrollView()
                        
                        NameLine(title: "Лучшая цена")
                        
                        SacondaryScrollView(fromData: bestPriceScrollData)
                        
                        // Delete when add offsets
                        VStack{}
                            .frame(height: 100)
                    }
                    .ignoresSafeArea(.all)
                }
                
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea([.top, .bottom])
            }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Главная")
                }
                Text("Мой список")
                    .tabItem {
                        Image(systemName: "scroll")
                        Text("Мой список")
                    }
                
                Text("Магазин")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Магазин")
                    }
                
                Text("Профиль")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
                
                Text("Корзина")
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


