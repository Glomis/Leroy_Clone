//
//  BigScrollCell.swift
//  LeroyDublicate
//
//  Created by Tatyana on 19.04.2021.
//

import SwiftUI

struct BigScrollCell: View {
    
    var cell: BigCell = BigCell(image: "drill", price: "730", discription: "Описание")
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(cell.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 100)
                .padding(.horizontal, 10)
            
            HStack(spacing: 3) {
                Text(cell.price)
                    .fontWeight(.semibold)
                Text("₽ / шт.")
                    .font(.caption)
                    .fontWeight(.medium)
            }
            .foregroundColor(.black)
            .padding(.horizontal)
            
            Text(cell.discription)
                .font(.footnote)
                .foregroundColor(.black)
                .lineLimit(2)
                .padding(.horizontal)
        }
        .frame(width: 150, height: 180)
    }
}

struct BigScrollCell_Previews: PreviewProvider {
    static var previews: some View {
        BigScrollCell()
    }
}
