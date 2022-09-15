//
//  ProfileView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 9/12/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color("DefaultBackgroundColor")
                .ignoresSafeArea()
            VStack {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
