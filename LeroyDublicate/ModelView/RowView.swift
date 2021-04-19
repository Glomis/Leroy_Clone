//
//  RowView.swift
//  LeroyDublicate
//
//  Created by Tatyana on 18.04.2021.
//

import SwiftUI

struct RowView: View {
    
    var name = "сад"
    var image = "flower1"
    
    var body: some View {
        VStack {
            HStack {
                Text(name)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.7)
                    
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
        .frame(width: 120, height: 120)
        .foregroundColor(.black)
        .background(Color(#colorLiteral(red: 0.9519549855, green: 0.9519549855, blue: 0.9519549855, alpha: 1)))
        .cornerRadius(5)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
