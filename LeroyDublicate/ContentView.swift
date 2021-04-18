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
            ScrollView(.vertical) {
//                VStack {
                    NavigationBar()
                    
                    FirstScroll()
                    
                    HStack {
                        Text("Предложение ограничено")
                            .font(.headline)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.leading)
//                    .padding(.vertical, 10)
                    
                LimitSaleScrollView()
                
                HStack {
                    Text("Лучшая цена")
                        .font(.headline)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.leading)
                .padding(.vertical, 20)
                
                LimitSaleScrollView(fromData: bestPriceScrollData)
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                            Image("drill")
                            HStack(spacing: 3) {
                                Text("730")
                                    .fontWeight(.semibold)
                                Text("₽ / шт.")
                                    .font(.caption)
                                    .fontWeight(.medium)
                            }
                            Text("Прекрасное сверло, мозг делает только в путь.")
                                .font(.footnote)
                        }
                    .frame(width: 150, height: 200)
                    Spacer()
                }
                .padding(.leading)
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                            Image("drill")
                            HStack(spacing: 3) {
                                Text("730")
                                    .fontWeight(.semibold)
                                Text("₽ / шт.")
                                    .font(.caption)
                                    .fontWeight(.medium)
                            }
                            Text("Прекрасное сверло, мозг делает только в путь.")
                                .font(.footnote)
                        }
                    .frame(width: 150, height: 200)
                    Spacer()
                }
                .padding(.leading)
                
                
//                    Spacer()
//                }
            }
            .ignoresSafeArea(.all)
            
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
        .background(Color.green)
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NavigationBar: View {
    @State var df = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Поиск товаров")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.top, 40)
                Spacer()
            }
            .padding(.leading)
            
            HStack(spacing: 20) {
                HStack {
                    TextField("Поиск", text: $df)
                        .padding(15)
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .padding(.vertical, 11)
                        .padding(.horizontal, 15)
                        .background(Color(#colorLiteral(red: 0.3104550943, green: 0.8169139589, blue: 0.1544064147, alpha: 1)))
                        .cornerRadius(5)
                        .padding(.trailing)
                }
                .background(Color.white)
                .cornerRadius(5)
                .padding(.leading)
                
                Image(systemName: "barcode")
                    .frame(width: 60, height: 51)
                    .scaleEffect(1.5)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.trailing)
                    .aspectRatio(contentMode: .fill)
            }
            .padding(.bottom)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)
        .background(Color(#colorLiteral(red: 0.295571463, green: 0.7855085378, blue: 0.1472125314, alpha: 1)))
    }
}
