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
        VStack(alignment: .leading) {
            Group {
                /*if data.strDrinkThumb != nil {
                    Image(urldata.strDrinkThumb!)
                }*/
                Text("名稱：" + data.strDrink)
                Spacer()
                    .frame(height: 30)
            }
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    Text("材料：")
                    if data.strIngredient1 != nil && data.strMeasure1 != nil {
                        Text(data.strIngredient1! + "     " + data.strMeasure1!)
                    }
                    if data.strIngredient2 != nil && data.strMeasure2 != nil {
                        Text(data.strIngredient2! + "     " + data.strMeasure2!)
                    }
                    if data.strIngredient3 != nil && data.strMeasure3 != nil {
                        Text(data.strIngredient3! + "     " + data.strMeasure3!)
                    }
                    if data.strIngredient4 != nil && data.strMeasure4 != nil {
                        Text(data.strIngredient4! + "     " + data.strMeasure4!)
                    }
                    if data.strIngredient5 != nil && data.strMeasure5 != nil {
                        Text(data.strIngredient5! + "     " + data.strMeasure5!)
                    }
                }
                VStack(alignment: .leading) {
                    if data.strIngredient6 != nil && data.strMeasure6 != nil {
                        Text(data.strIngredient6! + "     " + data.strMeasure6!)
                    }
                    if data.strIngredient7 != nil && data.strMeasure7 != nil {
                        Text(data.strIngredient7! + "     " + data.strMeasure7!)
                    }
                    if data.strIngredient8 != nil && data.strMeasure8 != nil {
                        Text(data.strIngredient8! + "     " + data.strMeasure8!)
                    }
                    if data.strIngredient9 != nil && data.strMeasure9 != nil {
                        Text(data.strIngredient9! + "     " + data.strMeasure9!)
                    }
                    if data.strIngredient10 != nil && data.strMeasure10 != nil {
                        Text(data.strIngredient10! + "     " + data.strMeasure10!)
                    }
                }
                VStack(alignment: .leading) {
                    if data.strIngredient11 != nil && data.strMeasure11 != nil {
                        Text(data.strIngredient11! + "     " + data.strMeasure11!)
                    }
                    if data.strIngredient12 != nil && data.strMeasure12 != nil {
                        Text(data.strIngredient12! + "     " + data.strMeasure12!)
                    }
                    if data.strIngredient13 != nil && data.strMeasure13 != nil {
                        Text(data.strIngredient13! + "     " + data.strMeasure13!)
                    }
                    if data.strIngredient14 != nil && data.strMeasure14 != nil {
                        Text(data.strIngredient14! + "     " + data.strMeasure14!)
                    }
                    if data.strIngredient15 != nil && data.strMeasure15 != nil {
                        Text(data.strIngredient15! + "     " + data.strMeasure15!)
                    }
                }
            }
            VStack(alignment: .leading) {
                Spacer()
                    .frame(height: 30)
                Text("做法：")
                if data.strInstructions != nil {
                    Text(data.strInstructions!)
                }
            }
        }
        .font(.system(size: 30))
        
    }
}

/*struct Recipe_Previews: PreviewProvider {
    static var previews: some View {
        Recipe(data: )
    }
}*/
