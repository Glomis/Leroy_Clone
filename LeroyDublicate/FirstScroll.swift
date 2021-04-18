//
//  FirstScroll.swift
//  LeroyDublicate
//
//  Created by Tatyana on 18.04.2021.
//

import SwiftUI

struct FirstScroll: View {
    var rowData = firstScrollData
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20) {
                FirstRowView()
                ForEach(rowData) {row in
                    
                        RowView(name: row.name, image: row.icon, color: row.backColor, nameColor: row.textColor)
                
                }
            }
                .padding()
        }
    }
}



struct FirstScroll_Previews: PreviewProvider {
    static var previews: some View {
        FirstScroll()
    }
}

struct FirstScrollRow: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var textColor: Color
    var backColor: Color
}

let firstScrollData = [
    FirstScrollRow(name: "Сад",
                   icon: "flower1",
                   textColor: .black, backColor: Color(#colorLiteral(red: 0.9519549855, green: 0.9519549855, blue: 0.9519549855, alpha: 1))),
    FirstScrollRow(name: "Освещение",
                   icon: "light",
                   textColor: .black, backColor: Color(#colorLiteral(red: 0.9519549855, green: 0.9519549855, blue: 0.9519549855, alpha: 1))),
    FirstScrollRow(name: "Инструменты",
                   icon: "drill",
                   textColor: .black, backColor: Color(#colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1))),
    FirstScrollRow(name: "Каталог",
                   icon: "list.dash",
                   textColor: .black, backColor: Color(#colorLiteral(red: 0.9519549855, green: 0.9519549855, blue: 0.9519549855, alpha: 1)))
]

struct RowView: View {
    
    var name = "Каталог"
    var image = "flower1"
    var color = Color.green
    var nameColor = Color.white
    
    var body: some View {
        VStack {
            HStack {
                Text(name)
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            
            Spacer()
            
            HStack {
                Spacer()
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .font(.largeTitle)
                    .scaleEffect(1.2)
            }
            
        }
        .frame(width: 150, height: 150)
        .foregroundColor(nameColor)
        .background(color)
        .cornerRadius(5)
    }
}

struct FirstRowView: View {
    
    var name = "Каталог"
    var image = "list.dash"
    var color = Color(#colorLiteral(red: 0.295571463, green: 0.7855085378, blue: 0.1472125314, alpha: 1))
    var nameColor = Color.white
    
    var body: some View {
        VStack {
            HStack {
                Text(name)
                    .font(.headline)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            
            Spacer()
            
            HStack {
                Spacer()
                Image(systemName: image)
                    .font(.largeTitle)
                    .scaleEffect(1.2)
            }
            .padding()
        }
        .frame(width: 150, height: 150)
        .foregroundColor(nameColor)
        .background(color)
        .cornerRadius(5)
    }
}
