//
//  ProductDitalView.swift
//  LeroyDublicate
//
//  Created by Tatyana on 20.04.2021.
//

import SwiftUI

struct ProductDitalView: View {
    var product: BigCell = BigCell(image: "drill", price: "1000", discription: "Самый качественный рулон шелка на рынке.")
    
    var body: some View {
        VStack {
            Spacer()
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 300)
            Spacer()
            VStack(alignment: .leading, spacing: 10) {
                Text("артикул: 82721625")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            
                Text(product.discription)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(3)
                    .lineSpacing(5)
            }
            .padding(.bottom)
            
            
            Divider()
            HStack {
                HStack(spacing: 3) {
                    Text(product.price)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("₽ / шт.")
                        .font(.caption)
                        .fontWeight(.medium)
                }
            
                Spacer()
                Button("В корзину") {
                    
                }
                .font(.headline)
                .padding()
                .background(Color(#colorLiteral(red: 0.295571463, green: 0.7855085378, blue: 0.1472125314, alpha: 1)))
                .foregroundColor(.white)
                .cornerRadius(5)
            }
            .padding()
            Divider()
        }
       
    }
}

struct ProductDitalView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDitalView()
    }
}
