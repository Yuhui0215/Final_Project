//
//  FirstLetterJson.swift
//  Final_Project
//
//  Created by User08 on 2022/1/25.
//

import Foundation

class FirstLetterJson: ObservableObject {
    @Published var items = [StoreItem]()
    
    func fetch() {
        let address = "https://www.thecocktaildb.com/api/json/v1/1/search.php?f=b&api_key=1"
        if let url = URL(string: address) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = .iso8601
                        let name = try decoder.decode(CocktailJson.self, from: data)
                        self.items = name.drinks
                            //print(items)
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
