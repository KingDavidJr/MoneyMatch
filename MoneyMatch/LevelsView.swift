//
//  LevelsView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import SwiftUI

struct LevelsView: View {
    @EnvironmentObject var situationViewModel: SituationViewModel
    var body: some View {
        NavigationStack {
            ForEach(LevelHelper.levelsExample) { level in
                NavigationLink(destination: SituationView(level: level).environmentObject(situationViewModel)) {
                    LevelCardView(level: level)
                }
            }
        }
    }
}

#Preview {
    LevelsView()
        .environmentObject(SituationViewModel.shared)
}
