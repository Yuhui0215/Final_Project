//
//  SearchByFirstLetter.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SearchByFirstLetter: View {
    @StateObject var cocktailJson = CocktailJson()
    @State private var firstLetter = ""
    @State private var search = false
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    TextField("輸入輸入雞尾酒第一個字母", text: self.$firstLetter)
                        .font(.system(size: 20))
                        .padding()
                        .frame(height: 40)
                    
                }
                .background(Color(red: 192/255, green: 220/255, blue: 216/255))
                
                Button("搜尋") {
                    if firstLetter == "" {
                        search = false
                    }
                    else {
                        search = true
                        cocktailJson.fetch(function: "search", type: "f", keyword: firstLetter)
                    }
                }
                .foregroundColor(Color(red: 0/255, green: 0/255, blue: 100/255))
                .frame(width: 80, height: 40)
                .background(Color(red: 192/255, green: 220/255, blue: 216/255))
                
            }
            .frame(width: UIScreen.main.bounds.width, height: 130)
                
            if search == true {
                List {
                    ForEach(cocktailJson.items, id: \.idDrink) { item in
                        NextPageView(data: item)
                    }
                }
            /* .refreshable {
                cocktailJson.fetch(function: "search", type: "s", keyword: "")
                }*/
            }
        }
        .overlay(ProgressView("Loading").opacity(cocktailJson.items.isEmpty && search ? 1 : 0))
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

struct SearchByFirstLetter_Previews: PreviewProvider {
    static var previews: some View {
        SearchByFirstLetter()
    }
}
