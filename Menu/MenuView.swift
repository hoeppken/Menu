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
            
          MenuListRoll(menuItem: menuItem)
            
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
