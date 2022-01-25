//
//  SearchByRandom.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SearchByRandom: View {
    @StateObject var cocktailJson = CocktailJson()
    
    var body: some View {
        VStack {
            Text("隨機推薦一款雞尾酒")
            List {
                ForEach(cocktailJson.items, id: \.idDrink) { item in
                    NextPageView(data: item)
                }
            }
            /*.refreshable {
                cocktailJson.fetch(function: "random", type: "", keyword: "")
            }*/
        }
        .onAppear() {
            cocktailJson.fetch(function: "random", type: "", keyword: "")
        }
        .overlay(ProgressView("Loading").opacity(cocktailJson.items.isEmpty ? 1 : 0))
    }
    
    struct NextPageView: View {
        let data : StoreItemCocktail
        var body: some View {
            NavigationLink(
                destination: Recipe(data: data),
                label: {
                    Text(data.idDrink)
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
