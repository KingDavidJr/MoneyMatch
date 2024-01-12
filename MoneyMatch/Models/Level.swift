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
    let itemPrice: Float
    
    init(id: Int, itemName: String, itemPrice: Float) {
        self.id = id
        self.itemName = itemName
        self.itemPrice = itemPrice
    }
}

struct LevelHelper {
    static let levelsExample: [Level] = [
        Level(id: 1, itemName: "toy", itemPrice: 22.0),
        Level(id: 2, itemName: "candy", itemPrice: 2.0),
    
    ]
}
