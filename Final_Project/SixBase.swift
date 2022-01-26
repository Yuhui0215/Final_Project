//
//  SixBase.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SixBase: View {
    @StateObject var baseJson = BaseJson()
    @State var click = false
    
    var body: some View {
        NavigationView {
            TabView {
                Button("Vodka") {
                    baseJson.fetch(name: "vodka")
                    click = true
                }
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .sheet(isPresented: $click) {
                    if baseJson.items.isEmpty == false {
                        Base(item: baseJson.items[0])
                    }
                }
                Button("Tequila") {
                    baseJson.fetch(name: "tequila")
                    click = true
                }
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .sheet(isPresented: $click) {
                    if baseJson.items.isEmpty == false {
                        Base(item: baseJson.items[0])
                    }
                }
                Button("Gin") {
                    baseJson.fetch(name: "gin")
                    click = true
                }
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .sheet(isPresented: $click) {
                    if baseJson.items.isEmpty == false {
                        Base(item: baseJson.items[0])
                    }
                }
                Button("Rum") {
                    baseJson.fetch(name: "rum")
                    click = true
                }
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .sheet(isPresented: $click) {
                    if baseJson.items.isEmpty == false {
                        Base(item: baseJson.items[0])
                    }
                }
                Button("Whiskey") {
                    baseJson.fetch(name: "whiskey")
                    click = true
                }
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .sheet(isPresented: $click) {
                    if baseJson.items.isEmpty == false {
                        Base(item: baseJson.items[0])
                    }
                }
                Button("Brandy") {
                    baseJson.fetch(name: "brandy")
                    click = true
                }
                .padding()
                .background(Color.black)
                .cornerRadius(20)
                .font(.system(size: 30))
                .foregroundColor(.white)
                .sheet(isPresented: $click) {
                    if baseJson.items.isEmpty == false {
                        Base(item: baseJson.items[0])
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .navigationTitle("六大基酒介紹")
        }
    }
}

struct SixBase_Previews: PreviewProvider {
    static var previews: some View {
        SixBase()
    }
}
