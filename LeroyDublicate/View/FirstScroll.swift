//
//  FirstScroll.swift
//  LeroyDublicate
//
//  Created by Tatyana on 18.04.2021.
//

import SwiftUI

struct FirstScroll: View {
    var rows = scrollData
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 20) {
                FirstRowView()
                
                ForEach(rows) { cell in
                    RowView(name: cell.name, image: cell.icon)
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






