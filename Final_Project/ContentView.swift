//
//  ContentView.swift
//  Project
//
//  Created by Len on 2022/1/18.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView {
                Cocktail()
                    .tabItem {
                        Image(systemName: "house")
                        Text("雞尾酒酒譜")
                }
                SixBase()
                    .tabItem {
                        Image(systemName: "scroll")
                        Text("六大基酒介紹")
                }
                /*Others()
                    .tabItem {
                        Image(systemName: "wrench.and.screwdriver")
                        Text("未加入的功能")
                }*/
            }
            .accentColor(.orange)
        }
    }
}

/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
