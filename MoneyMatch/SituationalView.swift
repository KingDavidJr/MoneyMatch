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
                HStack() {
                    Button {
                        
                    } label: {
                        Spacer()
                        Image("ResetButton")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal, 30.0)
                            
                    }
                }
                Spacer()
                Text("Level 2")
                    .font(.title)
                .foregroundColor(.white)
                Spacer(minLength: 680)
                
            }
        }
    }
}

struct SituationalView_Previews: PreviewProvider {
    static var previews: some View {
        SituationalView()
    }
}
