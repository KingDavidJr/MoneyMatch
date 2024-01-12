//
//  SituationViewModel.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import Foundation

@MainActor class SituationViewModel: ObservableObject {
    static var shared = SituationViewModel()
    
    @Published var currentValue: Float
    
    init(currentValue: Float = 0.0) {
        self.currentValue = currentValue
    }
    
    func addValue(of money: Money) {
        switch money {
        case .penny:
            currentValue += 0.01
        case .nickel:
            currentValue += 0.05
        case .dime:
            currentValue += 0.10
        case .quarter:
            currentValue += 0.25
        case .oneDollarBill:
            currentValue += 1.00
        case .fiveDollarBill:
            currentValue += 5.00
        case .tenDollarBill:
            currentValue += 10.00
        case .twentyDollarBill:
            currentValue += 20.00
        case .fiftyDollarBill:
            currentValue += 50.00
        case .hundredDollarBill:
            currentValue += 100.00
        }
    }
    
    func checkValue(level: Level) -> Bool{
        if currentValue == level.itemPrice {
            return true
        }
        return false
    }
    
    func resetValue() {
        currentValue = 0.0
    }
}
