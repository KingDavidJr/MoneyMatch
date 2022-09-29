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
            ProfileColorsView().backgroundColor
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Spacer()
                        Image("ResetButton")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                            .padding(.horizontal, 30.0)
                            .offset(y: 20)
                            .background(
                                Rectangle()
                                    .fill(Color("DefaultBackgroundColor"))
                                    .frame(minWidth: 800, idealWidth: 1000, maxWidth: 1500, minHeight: 150, idealHeight: 200, maxHeight: 300)
                                    .shadow(color: .black, radius: 10)
                            )
                            .overlay(
                                Rectangle()
                                    .fill(Color("TimerColor"))
                                    .frame(minWidth: 800,
                                          idealWidth: 1000,
                                          maxWidth: 1500,
                                          minHeight: 4,
                                          idealHeight: 5,
                                          maxHeight: 6)
                                    .offset(y: 78)
                            )
    
                            
                            
                    }
                }
                Spacer()
                Text("Level 2")
                    .font(.title)
                .foregroundColor(.white)
                Spacer(minLength: 750)
                
            }
        }
    }
}

struct SituationalView_Previews: PreviewProvider {
    static var previews: some View {
        SituationalView()
    }
}
