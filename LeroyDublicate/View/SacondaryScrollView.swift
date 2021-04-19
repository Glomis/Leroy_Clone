//
//  LimitSaleScrollView.swift
//  LeroyDublicate
//
//  Created by Tatyana on 18.04.2021.
//

import SwiftUI

struct SacondaryScrollView: View {
    var fromData = limitScrollData
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 10) {
                ForEach(fromData) { cell in
                    BigScrollCell(cellImage: cell.image, price: cell.price, discription: cell.discription)
                }
            }
            .padding(.leading)
        }
        
    }
}

struct SacondaryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        SacondaryScrollView()
    }
}
