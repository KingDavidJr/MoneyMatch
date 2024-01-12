//
//  LevelCardView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import SwiftUI

struct LevelCardView: View {
    let level: Level
    var body: some View {
        Text("Level \(level.id)")
            .foregroundStyle(.white)
            .font(.title)
            .padding()
            .containerRelativeFrame(.horizontal, { size, axis in
                size * 0.6
            })
            .background {
                Color.blue
            }
            .clipShape(RoundedRectangle(cornerRadius: 5.0))
    }
}

#Preview {
    LevelCardView(level: LevelHelper.levelsExample[0])
}
