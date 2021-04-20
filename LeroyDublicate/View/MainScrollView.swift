//
//  FirstScroll.swift
//  LeroyDublicate
//
//  Created by Tatyana on 18.04.2021.
//

import SwiftUI

struct MainScrollView: View {
    var rows = scrollData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                FirstRowView()
                
                ForEach(rows) { cell in
                    RowView(scrollCell: cell)
                }
            }
            .padding(.top)
            .padding(.horizontal)
        }
    }
}



struct FirstScroll_Previews: PreviewProvider {
    static var previews: some View {
        MainScrollView()
    }
}






