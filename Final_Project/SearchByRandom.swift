//
//  SearchByRandom.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SearchByRandom: View {
    @StateObject var cocktailJson = CocktailJson()
    @State private var go = false
    
    var body: some View {
        VStack {
            Text("隨機推薦一款雞尾酒")
                .font(.system(size: 25))
            Spacer()
                .frame(height: 20)
            Button("推薦!") {
                go = true
                cocktailJson.fetch(function: "random", type: "", keyword: "")
            }
            .foregroundColor(Color(red: 0/255, green: 0/255, blue: 100/255))
            .frame(width: 160, height: 40)
            .background(Color(red: 192/255, green: 220/255, blue: 216/255))
            if go == true {
                List {
                    ForEach(cocktailJson.items, id: \.idDrink) { item in
                        NextPageView(data: item)
                    }
                }
                .overlay(ProgressView("Loading").opacity(cocktailJson.items.isEmpty && go ? 1 : 0))
                /*.refreshable {
                 cocktailJson.fetch(function: "random", type: "", keyword: "")
                 }*/
            }
        }
        
    }
    
    struct NextPageView: View {
        let data : StoreItemCocktail
        var body: some View {
            NavigationLink(
                destination: Recipe(data: data),
                label: {
                    Text(data.strDrink)
                }
            )
        }
    }
}

struct SearchByRandom_Previews: PreviewProvider {
    static var previews: some View {
        SearchByRandom()
    }
}
