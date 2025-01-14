//
//  MenuItem.swift
//  Menu
//
//  Created by Rafael dos Santos Varela on 13.01.25.
//

import Foundation

struct MenuItem : Identifiable {
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
