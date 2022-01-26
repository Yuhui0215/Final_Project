//
//  SearchByName.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SearchByName: View {
    @StateObject var cocktailJson = CocktailJson()
    @State private var name = ""
    @State private var search = false
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    TextField("輸入雞尾酒名稱", text: self.$name)
                        .font(.system(size: 20))
                        .padding()
                        .frame(height: 40)
                    
                }
                .background(Color(red: 192/255, green: 220/255, blue: 216/255))
                
                Button("搜尋") {
                    if name == "" {
                        search = false
                    }
                    else {
                        search = true
                        cocktailJson.fetch(function: "search", type: "s", keyword: name)
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
                        NextPageView(datas: item)
                    }
                }
            /*.refreshable {
                cocktailJson.fetch(function: "search", type: "s", keyword: "")
            }*/
            }
        }
        .overlay(ProgressView("Loading").opacity(cocktailJson.items.isEmpty && search ? 1 : 0))
    }
    
    
    struct NextPageView: View {
        let datas : StoreItemCocktail
        var body: some View {
            NavigationLink(
                destination: Recipe(data: datas),
                label: {
                    Text(datas.strDrink)
                }
            )
        }
    }
}

struct SearchByName_Previews: PreviewProvider {
    static var previews: some View {
        SearchByName()
    }
}
