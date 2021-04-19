//
//  NameLine.swift
//  LeroyDublicate
//
//  Created by Tatyana on 19.04.2021.
//

import SwiftUI

struct NameLine: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            Spacer()
        }
        .padding(.leading)
        .padding(.top, 20)
    }
}


struct NameLine_Previews: PreviewProvider {
    static var previews: some View {
        NameLine(title: "Демонстрационный текст")
    }
}
