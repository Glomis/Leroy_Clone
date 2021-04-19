//
//  dd.swift
//  LeroyDublicate
//
//  Created by Tatyana on 19.04.2021.
//

import Foundation

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
            price: "1068",
            discription: "Флизилиновые обои Vagnerplast Unplugget серые 0.53 м"),
    BigCell(image: "kashpo",
            price: "658",
            discription: "Кашпо Idea Дюна 34х63 см"),
    BigCell(image: "napkins",
            price: "122",
            discription: "Салфетка, 35х35 см, микрофибра, 4 шт"),
    BigCell(image: "clean",
            price: "116",
            discription: "Средство для мытья стекол Prosept"),
    BigCell(image: "fliz2",
            price: "188",
            discription: "Лоток для столовых приборов двойной 40х31х7 см."),
    BigCell(image: "shelves",
            price: "3652",
            discription: "Стеллаж Кабуки 60х201х28 см, ЛДСП.")
]
