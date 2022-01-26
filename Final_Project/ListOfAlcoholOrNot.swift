//
//  ListOfAlcoholOrNot.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct ListOfAlcoholOrNot: View {
    @StateObject var cocktailJson = CocktailJson()
    @State private var alcohol = ""
    let alco = ["含酒精", "不含酒精"]
    
    var body: some View {
        //NavigationView {
        VStack {
            HStack {
                Button("含酒精") {
                    cocktailJson.fetch(function: "filter", type: "a", keyword: "Alcoholic")
                }
                .foregroundColor(Color(red: 0/255, green: 0/255, blue: 100/255))
                .frame(width: 180, height: 40)
                .background(Color(red: 192/255, green: 220/255, blue: 216/255))
                Button("不含酒精") {
                    cocktailJson.fetch(function: "filter", type: "a", keyword: "Non_Alcoholic")
                }
                .foregroundColor(Color(red: 0/255, green: 0/255, blue: 100/255))
                .frame(width: 180, height: 40)
                .background(Color(red: 192/255, green: 220/255, blue: 216/255))
                
            }
            List {
                ForEach(cocktailJson.items, id: \.idDrink) { item in
                    NextPageView(data: item)
                }
            }
        }
        //}
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

struct ListOfAlcoholOrNot_Previews: PreviewProvider {
    static var previews: some View {
        ListOfAlcoholOrNot()
    }
}
