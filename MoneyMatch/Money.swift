//
//  Money.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import Foundation

enum Money {
    case penny
    case nickel
    case dime
    case quarter
    case oneDollarBill
    case fiveDollarBill
    case tenDollarBill
    case twentyDollarBill
    case fiftyDollarBill
    case hundredDollarBill
}

extension Money {
    func currencyValue() -> Float {
        switch self {
        case .penny:
            return 0.01
        case .nickel:
            return 0.05
        case .dime:
            return 0.10
        case .quarter:
            return 0.25
        case .oneDollarBill:
            return 1.00
        case .fiveDollarBill:
            return 5.00
        case .tenDollarBill:
            return 10.00
        case .twentyDollarBill:
            return 20.00
        case .fiftyDollarBill:
            return 50.00
        case .hundredDollarBill:
            return 100.00
        }
    }
}
