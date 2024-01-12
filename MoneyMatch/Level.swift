//
//  Level.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import Foundation

struct Level: Identifiable {
    let id: Int
    let itemName: String
    let itemPrice: String
    
    init(id: Int, itemName: String, itemPrice: String) {
        self.id = id
        self.itemName = itemName
        self.itemPrice = itemPrice
    }
}
