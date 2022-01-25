//
//  Cocktail.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct Cocktail: View {
    var body: some View {
        HStack {
            Text("酒譜搜尋")
            NavigationLink (
                destination: SearchByName(),
                label: {
                    HStack {
                        Image(systemName: "hammer.fill")
                            Text("以名稱搜尋")
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(20)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                }
            )
            NavigationLink (
                destination: SearchByFirstLetter(),
                label: {
                    HStack {
                        Image(systemName: "book.fill")
                        Text("以字首搜尋")
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(20)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                }
            )
            /*NavigationLink (
                destination: SearchByRandom(),
                label: {
                    HStack {
                        Image(systemName: "book.fill")
                        Text("以成份搜尋")
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(20)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                }
            )*/
            NavigationLink (
                destination: SearchByIngredient(),
                label: {
                    HStack {
                        Image(systemName: "book.fill")
                        Text("以有/無酒精搜尋")
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(20)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                }
            )
            NavigationLink (
                destination: ListOfAlcoholOrNot(),
                label: {
                    HStack {
                        Image(systemName: "book.fill")
                        Text("隨機推薦酒譜")
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(20)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                }
            )
        }
    }
}

struct Cocktail_Previews: PreviewProvider {
    static var previews: some View {
        Cocktail()
    }
}
