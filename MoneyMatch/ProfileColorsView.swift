//
//  ProfileColorsView.swift
//  MoneyMatch
//
//  Created by David Amedeka on 9/12/22.
//

import SwiftUI

struct colorOptions1: Identifiable {
    let id: String = UUID().uuidString
    let color: Color
}

struct colorOptions2: Identifiable {
    let id: String = UUID().uuidString
    let color: Color
}

struct colorOptions3: Identifiable {
    let id: String = UUID().uuidString
    let color: Color
}

struct ProfileColorsView: View {
    @State var name:String = "Daniel"
    @State var count:Int = 0
    @State var backgroundColor:Color = Color("DefaultBackgroundColor")
    @State var backButtonPressed:Bool = false
    
    var body: some View {
        if backButtonPressed {
            //ProfileView().isShowing.toggle()
            ProfileView()
        } else {
            MainColorsView(backgroundColor: $backgroundColor, backButtonPressed: $backButtonPressed, name: $name)
        }
}

struct ProfileColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileColorsView()
    }
}

    struct MainColorsView: View {
        @Binding var backgroundColor:Color
        @Binding var backButtonPressed:Bool
        @Binding var name:String
        
        let colors: [colorOptions1] = [
            colorOptions1(color: Color("RedBackgroundColor")),
            colorOptions1(color: Color("OrangeBackgroundColor")),
            colorOptions1(color: Color("YellowBackgroundColor")),
        ]
        
        let colors2: [colorOptions2] = [
            colorOptions2(color: Color("GreenBackgroundColor")),
            colorOptions2(color: Color("DefaultBackgroundColor")),
            colorOptions2(color: Color("IndigoBackgroundColor")),
        ]
        
        let colors3: [colorOptions3] = [
            colorOptions3(color: Color("PurpleBackgroundColor")),
            colorOptions3(color: Color("PinkBackgroundColor")),
            colorOptions3(color: Color("LightDarkBackgroundColor")),
        ]
        
        var body: some View {
            ZStack {
                    backgroundColor
                        .ignoresSafeArea()
                VStack(spacing: 50) {
                    Button {
                        backButtonPressed.toggle()
                    } label: {
                        Image(systemName: "arrowshape.turn.up.left.fill")
                            .foregroundColor(.white)
                            .position(x: 50)
                    }
                    HeaderView(name: $name)
                    ProfileCircleView()
                    Text("Pick a background Color!")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 30) {
                        HStack(spacing: 20){
                            ForEach(colors) { typeColor in
                                VStack {
                                    HStack {
                                        Button {
                                            colorChanger(color: typeColor.color)
                                        } label: {
                                            RoundedRectangle(cornerRadius: 10)
                                                .strokeBorder(Color.gray, lineWidth: 4)
                                                .background(RoundedRectangle(cornerRadius: 10).foregroundColor(typeColor.color))
                                                .frame(width: 50, height: 40)
                                        }

                                    }
                                }
                            }
                        }
                        HStack(spacing: 20){
                            ForEach(colors2) { typeColor in
                                Button {
                                    colorChanger(color: typeColor.color)
                                } label: {
                                    RoundedRectangle(cornerRadius: 10)
                                        .strokeBorder(Color.gray, lineWidth: 4)
                                        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(typeColor.color))
                                        .frame(width: 50, height: 40)
                                }
                            }
                        }
                        HStack(spacing: 20){
                            ForEach(colors3) { typeColor in
                                Button {
                                    colorChanger(color: typeColor.color)
                                } label: {
                                    RoundedRectangle(cornerRadius: 10)
                                        .strokeBorder(Color.gray, lineWidth: 4)
                                        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(typeColor.color))
                                        .frame(width: 50, height: 40)
                                }
                            }
                        }
                    }
                }
            }
        }
        func colorChanger(color: Color) {
            backgroundColor = color
        }
        }
    }
