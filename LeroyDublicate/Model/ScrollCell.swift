//
//  ScrollCell.swift
//  LeroyDublicate
//
//  Created by Tatyana on 18.04.2021.
//

import Foundation

struct ScrollCell: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
}

let scrollData = [
    ScrollCell(name: "Сад", icon: "flower1"),
    ScrollCell(name: "Освещение", icon: "light"),
    ScrollCell(name: "Инструменты", icon: "drill"),
    ScrollCell(name: "Стройматериалы", icon: "brick"),
    ScrollCell(name: "Декор", icon: "silk")
]
