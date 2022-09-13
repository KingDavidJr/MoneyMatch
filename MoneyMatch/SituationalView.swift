//
//  SituationalView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 9/12/22.
//

import SwiftUI

struct SituationalView: View {
    var body: some View {
        ZStack {
            Color("DefaultBackgroundColor")
                .ignoresSafeArea()
            VStack {
                Text("Level 2")
                    .font(.title)
                .foregroundColor(.white)
                
            }
        }
    }
}

struct SituationalView_Previews: PreviewProvider {
    static var previews: some View {
        SituationalView()
    }
}
