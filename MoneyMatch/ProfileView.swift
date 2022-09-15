//
//  ProfileView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 9/12/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        let name = "Daniel"
        ZStack() {
            Color("DefaultBackgroundColor")
                .ignoresSafeArea()
            VStack(spacing: 50) {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                
                
                Text("Hi \(name)!")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                
                ProfileCircleView()
                
                
                Text("Options!")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .underline()
                
                ButtonView()
                //Spacer()
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct ProfileCircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
            Circle()
                .stroke(.black, lineWidth: 7)
        }
        .frame(minWidth: 200,
               maxWidth: 250,
               minHeight: 200,
               maxHeight: 250)
    }
}

struct ButtonView: View {
    var body: some View {
        VStack(spacing: 40) {
            Button(action: {
                
            }, label: {
                Text("Character")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.light)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("ButtonColors"))
                            .frame(minWidth: 200,
                                   maxWidth: 250,
                                   minHeight: 50,
                                   maxHeight: 60)
                    )
            })
            Button(action: {
                
            }, label: {
                Text("Colors")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.light)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("ButtonColors"))
                            .frame(minWidth: 200,
                                   maxWidth: 250,
                                   minHeight: 50,
                                   maxHeight: 60)
                    )
            })
            Button(action: {
                
            }, label: {
                Text("Settings")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.light)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("ButtonColors"))
                            .frame(minWidth: 200,
                                   maxWidth: 250,
                                   minHeight: 50,
                                   maxHeight: 60)
                    )
            })
        }
    }
}
