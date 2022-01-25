//
//  SixBase.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SixBase: View {
    var body: some View {
        NavigationView {
            TabView {
                NextPageView(name: "vodka")
                NextPageView(name: "tequila")
                NextPageView(name: "gin")
                NextPageView(name: "rum")
                NextPageView(name: "whiskey")
                NextPageView(name: "brandy")
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .navigationTitle("六大基酒介紹")
        }
        
    }
    
    struct NextPageView: View {
        let name: String
            var body: some View {
                NavigationLink(
                    destination: Base(baseName: name),
                    label: {
                        HStack {
                            Image(systemName: "book.fill")
                            Text(name)
                        }
                        .padding()
                        .background(Color.black)
                        .cornerRadius(20)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    })
            }
        }
}

struct SixBase_Previews: PreviewProvider {
    static var previews: some View {
        SixBase()
    }
}
