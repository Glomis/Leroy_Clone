//
//  BigScrollCell.swift
//  LeroyDublicate
//
//  Created by Tatyana on 19.04.2021.
//

import SwiftUI

struct BigScrollCell: View {
    
    var cellImage = "drill"
    var price = "730"
    var discription = "Прекрасное сверло, делает моментальные дыры в стене."
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(cellImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 100)
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
