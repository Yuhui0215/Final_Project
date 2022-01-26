//
//  Base.swift
//  Final_Project
//
//  Created by User08 on 2022/1/26.
//

import SwiftUI

struct Base: View {
    var item: StoreItemBase
    
    var body: some View {
        VStack {
            Text(item.strIngredient)
                .font(.system(size: 40))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
                .frame(height: 10)
            Text(item.strDescription)
                .font(.system(size: 20))
        }
    }
}
