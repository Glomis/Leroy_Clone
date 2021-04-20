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
                    NavigationLink(destination: ProductDitalView(product: cell)){
                        BigScrollCell(cell: cell)
                    }
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
