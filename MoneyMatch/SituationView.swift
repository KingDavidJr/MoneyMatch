//
//  SituationView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import SwiftUI

struct SituationView: View {
    @EnvironmentObject var situationViewModel: SituationViewModel
    let level: Level
    var body: some View {
        VStack {
            Text("Target Value \(level.itemPrice)")
            Text("Value \(situationViewModel.currentValue)")
            ButtonsView()
                .environmentObject(situationViewModel)
            Button(action: {
                situationViewModel.resetValue()
            }, label: {
                Text("Clear")
            })
        }
    }
}

#Preview {
    SituationView(level: Level(id: 1, itemName: "toy", itemPrice: 23.0))
        .environmentObject(SituationViewModel.shared)
}
