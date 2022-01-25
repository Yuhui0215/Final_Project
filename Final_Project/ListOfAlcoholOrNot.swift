//
//  ListOfAlcoholOrNot.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct ListOfAlcoholOrNot: View {
    @StateObject var cocktailJson = CocktailJson()
    @State private var alcohol = "含酒精"
    
    var body: some View {
        VStack {
            Form {
                Picker(selection: $alcohol, label: Text("選擇是否含酒精")) {
                    Text("含酒精")
                    Text("不含酒精")
                }
            }
            Text("2313")
            List {
                ForEach(cocktailJson.items, id: \.idDrink) { item in
                    NextPageView(data: item)
                }
            }
            /*.refreshable {
                if alcohol == "含酒精" {
                    cocktailJson.fetch(function: "filter", type: "a", keyword: "Alcoholic")
                }
                else {
                    cocktailJson.fetch(function: "filter", type: "a", keyword: "Non_Alcoholic")
                }
            }*/
            /*.overlay {
                if cocktailJson.items.isEmpty {
                    ProgressView()
                }
            }*/
        }
        .onAppear() {
            if alcohol == "含酒精" {
                cocktailJson.fetch(function: "filter", type: "a", keyword: "Alcoholic")
            }
            else {
                cocktailJson.fetch(function: "filter", type: "a", keyword: "Non_Alcoholic")
            }
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

struct ListOfAlcoholOrNot_Previews: PreviewProvider {
    static var previews: some View {
        ListOfAlcoholOrNot()
    }
}
