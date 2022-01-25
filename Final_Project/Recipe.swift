//
//  Recipe.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct Recipe: View {
    var data: StoreItemCocktail
    var body: some View {
        VStack {
            Group {
                Image(data.strDrinkThumb!)
                Text("名稱：" + data.strDrink)
            }
            VStack {
                Group {
                    Text("材料：")
                    Text(data.strIngredient1! + "     " + data.strMeasure1!)
                    Text(data.strIngredient2! + "     " + data.strMeasure2!)
                    Text(data.strIngredient3! + "     " + data.strMeasure3!)
                    Text(data.strIngredient4! + "     " + data.strMeasure4!)
                    Text(data.strIngredient5! + "     " + data.strMeasure5!)
                }
                Group {
                    Text(data.strIngredient6! + "     " + data.strMeasure6!)
                    Text(data.strIngredient7! + "     " + data.strMeasure7!)
                    Text(data.strIngredient8! + "     " + data.strMeasure8!)
                    Text(data.strIngredient9! + "     " + data.strMeasure9!)
                    Text(data.strIngredient10! + "     " + data.strMeasure10!)
                }
                Group {
                    Text(data.strIngredient11! + "     " + data.strMeasure11!)
                    Text(data.strIngredient12! + "     " + data.strMeasure12!)
                    Text(data.strIngredient13! + "     " + data.strMeasure13!)
                    Text(data.strIngredient14! + "     " + data.strMeasure14!)
                    Text(data.strIngredient15! + "     " + data.strMeasure15!)
                }
            }
            Group {
                Text("做法：")
                Text(data.strInstructions!)
            }
        }
        
    }
}

/*struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        Recipe()
    }
}*/
