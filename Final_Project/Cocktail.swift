//
//  Cocktail.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct Cocktail: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("酒譜搜尋")
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                    .offset(x: 0, y: -50)
                NavigationLink (
                    destination: SearchByName(),
                    label: {
                        HStack {
                            Image(systemName: "hammer.fill")
                            Text("以名稱搜尋")
                        }
                        .padding()
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width:300, height: 70)
                        .background(Color.black)
                        .cornerRadius(20)
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
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width:300, height: 70)
                        .background(Color.black)
                        .cornerRadius(20)
                    }
                )
                NavigationLink (
                    destination: SearchByRandom(),
                    label: {
                        HStack {
                            Image(systemName: "book.fill")
                            Text("隨機推薦酒譜")
                        }
                        .padding()
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width:300, height: 70)
                        .background(Color.black)
                        .cornerRadius(20)
                    }
                )
                
                NavigationLink (
                    destination: ListOfAlcoholOrNot(),
                    label: {
                        HStack {
                            Image(systemName: "book.fill")
                            Text("以有/無酒精搜尋")
                        }
                        .padding()
                        .font(.system(size: 28))
                        .foregroundColor(.white)
                        .frame(width:300, height: 70)
                        .background(Color.black)
                        .cornerRadius(20)
                    }
                )
            }
        }
    }
}

struct Cocktail_Previews: PreviewProvider {
    static var previews: some View {
        Cocktail()
    }
}
