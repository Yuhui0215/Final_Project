//
//  Base.swift
//  Final_Project
//
//  Created by User08 on 2022/1/26.
//

import SwiftUI

struct Base: View {
    var baseName: String
    @StateObject var baseJson = BaseJson()
    
    var body: some View {
        Text(baseName.description)
    }
}

struct Base_Previews: PreviewProvider {
    static var previews: some View {
        Base(baseName: "vodka")
    }
}
