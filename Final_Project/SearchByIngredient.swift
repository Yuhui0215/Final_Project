//
//  SearchByIngredient.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SearchByIngredient: View {
    //@StateObject var cocktailJson = CocktailJson()
    //@State private var name = "酒精"
    
    var body: some View {
        VStack {
            Text("2313")
            /*
             Form {
                 TextField("name", text: self.$name)
                     .font(.system(size: 18))
             }
             List {
                ForEach(cocktailJson.items, id: \.idDrink) { item in
                    NextPageView(data: item)
                }
            }*/
        }
    }
    
    /*struct NextPageView: View {
        let data : StoreItemCocktail
        var body: some View {
            NavigationLink(
                destination: Recipe(data: data),
                label: {
                    Text(data.idDrink)
                }
            )
        }
    }*/
}

struct SearchByIngredient_Previews: PreviewProvider {
    static var previews: some View {
        SearchByIngredient()
    }
}
