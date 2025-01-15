//
//  ContentView.swift
//  Menu
//
//  Created by Rafael dos Santos Varela on 09.01.25.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem] ()
    var dataService = DataService()
    
    var body: some View {
       
        List(menuItems) { menuItem in
            HStack {
                Image(menuItem.imageName).resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50).cornerRadius(10)
                Text(menuItem.name).bold()
                Spacer()
                Text("$" + menuItem.price)
            }.listRowSeparator(.hidden)
                .listRowBackground(Color(.brown).opacity(0.1))
        }.listStyle(.plain)
            .onAppear {
                // call for the data
               menuItems = dataService.getData() 
            }
    }
}

#Preview {
    MenuView()
}
