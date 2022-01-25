//
//  BaseJson.swift
//  Final_Project
//
//  Created by User08 on 2022/1/26.
//

import Foundation

class BaseJson: ObservableObject {
    @Published var description: String = ""

    init() {
        fetch(name: "vodka")
    }
    
    func fetch(name: String) {
        let address = "https://www.thecocktaildb.com/api/json/v1/1/search.php?i=\(name)"
        if let url = URL(string: address) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        decoder.dateDecodingStrategy = .iso8601
                        let item = try decoder.decode(BaseData.self, from: data)
                        DispatchQueue.main.async {
                            self.description = item.ingredients.strDescription
                            //print(item)
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
