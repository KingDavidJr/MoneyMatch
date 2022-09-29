//
//  ProfileColorsView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 9/12/22.
//

import SwiftUI

struct ProfileColorsView: View {
    @State var name:String = "Daniel"
    @State var count:Int = 0
    @State var backgroundColor:Color = Color("DefaultBackgroundColor")
    
    let buttonWidth = 85.0
    let buttonHeight = 50.0
    
    enum colorButtonEnums {
        case red,orange,yellow,green,blue,indigo,purple,pink,lightDark
    }
    
    private let listOfColors:[String : Color] = [
        "redColor" : Color("RedBackgroundColor"),
        "orangeColor" : Color("OrangeBackgroundColor"),
        "yellowColor" : Color("YellowBackgroundColor"),
        "greenColor" : Color("GreenBackgroundColor"),
        "blueColor" : Color("DefaultBackgroundColor"),
        "purpleColor" : Color("PurpleBackgroundColor"),
        "indigoColor" : Color("IndigoBackgroundColor")
    ]
    
    var body: some View {
        ZStack {
            listOfColors["blueColor"]
                .ignoresSafeArea()
            VStack(spacing: 50) {
                HeaderView(name: $name)
                ProfileCircleView()
                Text("Colors!")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                VStack(spacing: 30) {
                    HStack(spacing: 20){
                        
                            
                    }
                }
            }
        }
    }
}

struct ProfileColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileColorsView()
    }
}
