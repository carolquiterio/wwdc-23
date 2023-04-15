//
//  Challenge.swift
//  WWDC23
//
//  Created by Carol Quiterio on 14/04/23.
//

import Foundation
import SwiftUI

struct Challenge: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image("arrow")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 12, height: 30)
                        .rotationEffect(Angle(degrees: 180))
                        .frame(width: 100, height: 54)
                        .overlay(
                            Circle()
                                .stroke(Colors.buttonColor, lineWidth: 3.5)
                        )
                }
                .padding(.leading, 15)
                .padding(.top, 35)
                Spacer()
                
                Text("Solve the math challenge by finding out how much the tomato is worth.")
                    .font(.custom("Patrick Hand SC", size: 34))
                    .padding(.top, 40)
                    .frame(maxWidth: 900, maxHeight: .infinity, alignment: .topLeading)
                    .foregroundColor(.black)
                Spacer()
            }.frame(maxWidth: .infinity)
            
            HStack {
                Image("veg_lettuce")
                    .resizable()
                    .scaledToFit()
                CustomText(text: "+", textSize : 80, padding: 60)
                    .foregroundColor(.black)
                Image("veg_carrot")
                    .resizable()
                    .scaledToFit()
    
                CustomText(text: "=", textSize : 80, padding: 60)
                CustomText(text: "?", textSize : 80, padding: 60)
            }
            HStack {
                Image("veg_lettuce")
                    .resizable()
                    .scaledToFit()
                CustomText(text: "-", textSize : 80, padding: 60)
                Image("veg_carrot")
                    .resizable()
                    .scaledToFit()
                CustomText(text: "=", textSize : 80, padding: 60)
                CustomText(text: "?", textSize : 80, padding: 60)
            }
            HStack(alignment: .center) {
                Image("veg_lettuce")
                    .resizable()
                    .scaledToFit()
                CustomText(text: "=", textSize : 80, padding: 60)
                CustomText(text: "?", textSize : 80, padding: 60)
                    .alignmentGuide(.leading, computeValue: { _ in 0 })
                        
            }//.alignment(.leading)
            
            HStack {

                CustomButton(text: "10", textSize : 60, action : {print("oi")})
                CustomButton(text : "20", textSize : 60, action : {print("oi")})
                CustomButton(text : "5", textSize : 60, action : {print("oi")})
                CustomButton(text : "3", textSize : 60, action : {print("oi")})
            }
            
            }.frame(maxWidth: .infinity)
        .navigationBarBackButtonHidden(true)
        .background(Colors.background)
    }
}

struct CustomButton: View {
    var text: String
    var textSize: CGFloat
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Colors.buttonColor, lineWidth: 3.5)
                .frame(width: 90, height: 90)
                .overlay(
                    CustomText(text: text, textSize: textSize)
                )
        }
        .padding(.trailing, 30)
        .padding(.bottom, 30)
    }
}

struct CustomText: View {
    var text: String
    var textSize: CGFloat
    var padding: CGFloat = 1
    
    var body: some View {
        Text(text)
            .font(.custom("Patrick Hand SC", size: textSize))
            .foregroundColor(.black)
            .padding(.horizontal, padding)
        }
}

