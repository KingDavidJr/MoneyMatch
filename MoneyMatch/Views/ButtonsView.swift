//
//  ButtonsView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import SwiftUI

struct ButtonsView: View {
    @EnvironmentObject var situationViewModel: SituationViewModel
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    situationViewModel.addValue(of: .oneDollarBill)
                }, label: {
                    Image(.dollar)
                })
                
                Button(action: {
                    situationViewModel.addValue(of: .fiveDollarBill)
                }, label: {
                    Image(.fiveDollar)
                })
            }
            HStack {
                Button(action: {
                    situationViewModel.addValue(of: .tenDollarBill)
                }, label: {
                    Image(.tenDollar)
                })
                
                Button(action: {
                    situationViewModel.addValue(of: .twentyDollarBill)
                }, label: {
                    Image(.twentyDollar)
                })
            }
            HStack {
                Button(action: {
                    situationViewModel.addValue(of: .fiftyDollarBill)
                }, label: {
                    Image(.fiftyDollar)
                })
                
                Button(action: {
                    situationViewModel.addValue(of: .hundredDollarBill)
                }, label: {
                    Image(.hundredDollar)
                })
            }
        }
    }
}

#Preview {
    ButtonsView()
        .environmentObject(SituationViewModel.shared)
}
