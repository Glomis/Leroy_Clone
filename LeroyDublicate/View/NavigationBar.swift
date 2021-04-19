//
//  NavigationBar.swift
//  LeroyDublicate
//
//  Created by Tatyana on 19.04.2021.
//

import SwiftUI

struct NavigationBar: View {
    @State var df = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Поиск товаров")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(.top, 40)
                Spacer()
            }
            .padding(.leading)
            
            HStack(spacing: 20) {
                HStack {
                    TextField("Поиск", text: $df)
                        .padding(15)
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .padding(12)
                        
                        .background(Color(#colorLiteral(red: 0.3104550943, green: 0.8169139589, blue: 0.1544064147, alpha: 1)))
                        .cornerRadius(5)
                        .padding(.trailing, 4)
                }
                .background(Color.white)
                .cornerRadius(5)
                .padding(.leading)
                
                Image(systemName: "barcode")
                    .frame(width: 60, height: 51)
                    .scaleEffect(1.5)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(5)
                    .padding(.trailing)
                    .aspectRatio(contentMode: .fill)
            }
            .padding(.bottom)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)
        .background(Color(#colorLiteral(red: 0.295571463, green: 0.7855085378, blue: 0.1472125314, alpha: 1)))
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
