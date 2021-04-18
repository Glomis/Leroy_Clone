//
//  FirstRowView.swift
//  LeroyDublicate
//
//  Created by Tatyana on 18.04.2021.
//

import SwiftUI

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
                    .fontWeight(.semibold)
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
        .frame(width: 120, height: 120)
        .foregroundColor(nameColor)
        .background(color)
        .cornerRadius(5)
    }
}

struct FirstRowView_Previews: PreviewProvider {
    static var previews: some View {
        FirstRowView()
    }
}
