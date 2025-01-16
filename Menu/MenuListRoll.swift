//
//  MenuListRoll.swift
//  Menu
//
//  Created by Rafael dos Santos Varela on 16.01.25.
//

import SwiftUI

struct MenuListRoll: View {
    
    var menuItem: MenuItem
    
    var body: some View {
        HStack {
            Image(menuItem.imageName).resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50).cornerRadius(10)
            Text(menuItem.name).bold()
            Spacer()
            Text("$" + menuItem.price)
        }.listRowSeparator(.hidden)
            .listRowBackground(Color(.brown).opacity(0.1))
    }
}

#Preview {
    MenuListRoll(menuItem: MenuItem(name: "Test", price: "3.99", imageName: "tako-sushi"))
}
