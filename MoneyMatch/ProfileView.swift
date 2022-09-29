//
//  ProfileView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 9/12/22.
//

import SwiftUI

struct ProfileView: View {
    @State var isShowing: Bool = false
    var body: some View {
        if isShowing {
            ProfileColorsView()
        } else {
            MainProfileView(isShwoing: $isShowing)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct MainProfileView: View {
    @State private var name:String = "Daniel"
    @Binding var isShwoing: Bool
    var body: some View {
        ZStack() {
                Color("DefaultBackgroundColor")
                    .ignoresSafeArea()
                VStack(spacing: 50) {
                    HeaderView(name: $name)
                    
                    
                    ProfileCircleView()
                    
                    //                Link("View Our Terms of Service",
                    //                      destination: URL(string: "https://www.depaul.edu")!)
                    
                    
                    Text("Options!")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .underline()
                    
                    ButtonView(isShowing: $isShwoing)
            }
        }
    }
}

struct ProfileCircleView: View {
    // Replace this with an image and do clippedCircle()
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
    @Binding var isShowing:Bool
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
                if !isShowing {
                    isShowing.toggle()
                }
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

struct HeaderView: View {
    @Binding var name:String
    var body: some View {
        VStack(spacing: 50) {
            Text("Profile")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
            
            
            Text("Hi \(name)!")
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(.white)
        }
    }
}
