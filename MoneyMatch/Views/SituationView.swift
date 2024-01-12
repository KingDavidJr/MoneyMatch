//
//  SituationView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import SwiftUI

struct SituationView: View {
    @EnvironmentObject var situationViewModel: SituationViewModel
    @State private var result = ""
    let level: Level
    var body: some View {
        VStack {
            Text("Target Value \(level.itemPrice)")
            Text("Value \(situationViewModel.currentValue)")
            Text("Result \(result)")
            ButtonsView()
                .environmentObject(situationViewModel)
            Button(action: {
                situationViewModel.resetValue()
            }, label: {
                Text("Clear")
            })
            
            Button(action: {
                if situationViewModel.checkValue(level: level) {
                    result = "Success"
                    return
                }
                result = "Not Correct"
            }, label: {
                Text("Submit")
            })
        }
    }
}

#Preview {
    SituationView(level: Level(id: 1, itemName: "toy", itemPrice: 23.0))
        .environmentObject(SituationViewModel.shared)
}
