//
//  LimitSaleScrollView.swift
//  LeroyDublicate
//
//  Created by Tatyana on 18.04.2021.
//

import SwiftUI

struct LimitSaleScrollView: View {
    var fromData = limitScrollData
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                    ForEach(fromData) { cell in
                        BigScrollCell(cellImage: cell.image, price: cell.price, discription: cell.discription)
                }
            }
//                .padding()
        }
        
    }
}

struct LimitSaleScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LimitSaleScrollView()
    }
}

struct BigScrollCell: View {
    var cellImage = "drill"
    var price = "730"
    var discription = "Прекрасное сверло, мозг делает только в путь."
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(cellImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 100)
                .padding(.horizontal, 10)
            HStack(spacing: 3) {
                Text(price)
                    .fontWeight(.semibold)
                Text("₽ / шт.")
                    .font(.caption)
                    .fontWeight(.medium)
            }
            .padding(.horizontal)
            Text(discription)
                .font(.footnote)
                .lineLimit(2)
//                .padding(.horizontal)
                .padding(.horizontal)
        }
//        .padding()
        .frame(width: 150, height: 180)
        
    }
}

struct BigCell: Identifiable {
    var id = UUID()
    var image: String
    var price: String
    var discription: String
}

let limitScrollData = [
    BigCell(image: "europlitka",
            price: "730",
            discription: "Керамогранит Eurococeramika Карвалио 15х60 см"),
    BigCell(image: "rotband",
            price: "413",
            discription: "Штукатурка гипсовая Knauf Ротбанд 30 кг"),
    BigCell(image: "lamp",
            price: "4685",
            discription: "Светильник потолочный LED Rimini с пультом ДУ"),
    BigCell(image: "ceresit",
            price: "722",
            discription: "Грунтовка глубокого прониковения Ceresit СТ17"),
    BigCell(image: "makita",
            price: "7788",
            discription: "Перфоратор SDS-plus Makita HR24/70, 780 Вт, 2.7 Дж"),
]

let bestPriceScrollData = [
    BigCell(image: "fliz1",
            price: "10",
            discription: "Керамогранит Eurococeramika Карвалио 15х60 см"),
    BigCell(image: "kashpo",
            price: "658",
            discription: "Керамогранит Eurococeramika Карвалио 15х60 см"),
    BigCell(image: "clean",
            price: "116",
            discription: "Керамогранит Eurococeramika Карвалио 15х60 см"),
    BigCell(image: "napkins",
            price: "122",
            discription: "Керамогранит Eurococeramika Карвалио 15х60 см"),
    BigCell(image: "fliz2",
            price: "188",
            discription: "Керамогранит Eurococeramika Карвалио 15х60 см"),
    BigCell(image: "shelves",
            price: "3652",
            discription: "Керамогранит Eurococeramika Карвалио 15х60 см")
]
