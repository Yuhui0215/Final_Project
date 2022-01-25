//
//  SixBase.swift
//  Final_Project
//
//  Created by Len on 2022/1/25.
//

import SwiftUI

struct SixBase: View {
    @StateObject var baseJson = BaseJson()
    var body: some View {
        Text("23132")
        /*VStack {
            List {
                ForEach(items, id: \.idDrink) { item in
                    Row(data: item)
                }
            }
        }*/
    }
}

struct SixBase_Previews: PreviewProvider {
    static var previews: some View {
        SixBase()
    }
}
