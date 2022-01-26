//
//  CocktailJson.swift
//  Final_Project
//
//  Created by User08 on 2022/1/26.
//

import Foundation

class CocktailJson: ObservableObject {
    @Published var items = [StoreItemCocktail]()
    
    init() {
        fetch(function: "search", type: "s", keyword: "margarrita")
    }

    func fetch(function: String, type: String, keyword: String) {
        let address = "https://www.thecocktaildb.com/api/json/v1/1/\(function).php?\(type)=\(keyword)"
        if let url = URL(string: address) {
            URLSession.shared.dataTask(with: url) { [self] data, response, error in
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = .iso8601
                        let item = try decoder.decode(CocktailData.self, from: data)
                        DispatchQueue.main.async {
                            items = item.drinks
                            //print(items)
                        }
                    } catch {
                        print(error)
                    }
                }
                else {
                    print(error)
                }
            }.resume()
        }
    }
}
