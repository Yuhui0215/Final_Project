//
//  SearchByFirstLetter.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SearchByFirstLetter: View {
    @StateObject var cocktailJson = CocktailJson()
    @State private var firstLetter = "酒精"
    
    var body: some View {
        VStack {
            Form {
                TextField("name", text: self.$firstLetter)
                    .font(.system(size: 18))
            }
            List {
                ForEach(cocktailJson.items, id: \.idDrink) { item in
                    NextPageView(data: item)
                }
            }
            /*.refreshable {
                cocktailJson.fetch(function: "search", type: "f", keyword: firstLetter)
            }*/
        }
        .onAppear() {
            cocktailJson.fetch(function: "search", type: "f", keyword: firstLetter)
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

struct SearchByFirstLetter_Previews: PreviewProvider {
    static var previews: some View {
        SearchByFirstLetter()
    }
}
