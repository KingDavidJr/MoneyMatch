//
//  ContentView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 1/12/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var situationViewModel = SituationViewModel.shared
    @State private var isLoaded = true
    var body: some View {
        if isLoaded {
            LevelsView()
                .environmentObject(situationViewModel)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(SituationViewModel.shared)
}
