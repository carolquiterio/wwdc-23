//
//  SeccondChallenge.swift
//  WWDC23
//
//  Created by Carol Quiterio on 17/04/23.
//

import Foundation
import SwiftUI

struct SeccondChallenge: View {
    @Environment(\.dismiss) private var dismiss
    @State var isSuccessPopUpVisible = false
    @State var isErrorPopUpVisible = false
    
    var body: some View {
            ZStack {
                ZStack {
                    VStack(alignment: .center) {
                        HStack {
                            VStack {
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
                                                .stroke(Colors.button, lineWidth: 3.5)
                                        )
                                }
                                .padding(.leading, 15)
                                .padding(.top, 35)
                                Spacer()
                            }
                            Spacer()
                            
                            Text("Solve the math challenge by finding out how much the eggplant is worth.")
                                .font(.custom("Patrick Hand SC", size: 34))
                                .padding(.top, 40)
                                .frame(maxWidth: 900, maxHeight: .infinity, alignment: .topLeading)
                                .foregroundColor(.black)
                            Spacer()
                        }.frame(maxWidth: .infinity)
                        
                        HStack {
                            Image("veg_eggplant")
                                .resizable()
                                .scaledToFit()
                            CustomText(text: "+", textSize : 80, padding: 60)
                                .foregroundColor(.black)
                            Image("veg_tomato")
                                .resizable()
                                .scaledToFit()
                            
                            CustomText(text: "=", textSize : 80, padding: 60)
                            CustomText(text: "30", textSize : 80, padding: 60)
                        }
                        HStack {
                            Image("veg_banana")
                                .resizable()
                                .scaledToFit()
                            CustomText(text: "-", textSize : 80, padding: 60)
                            Image("veg_tomato")
                                .resizable()
                                .scaledToFit()
                            CustomText(text: "=", textSize : 80, padding: 60)
                            CustomText(text: "10", textSize : 80, padding: 60)
                        }
                        HStack(alignment: .center) {
                            Image("veg_tomato")
                                .resizable()
                                .scaledToFit()
                            CustomText(text: "=", textSize : 80, padding: 60)
                            CustomText(text: "?", textSize : 80, padding: 60)
                                .alignmentGuide(.leading, computeValue: { _ in 0 })
                            
                        }
                        
                        HStack {
                            
                            CustomButton(text: "1", textSize : 60, action : {isErrorPopUpVisible = true})
                            CustomButton(text : "10", textSize : 60, action : {isErrorPopUpVisible = true})
                            CustomButton(text : "15", textSize : 60, action : {isErrorPopUpVisible = true})
                            CustomButton(text : "20", textSize : 60, action : {isSuccessPopUpVisible = true})
                        }
                        

                    }
                    Rectangle()
                            .fill(Color.black.opacity((isErrorPopUpVisible || isSuccessPopUpVisible) ? 0.4 : 0))
                            .animation(.easeInOut(duration: 0.3))
                            .edgesIgnoringSafeArea(.all)
                }.overlay{
                    ErrorPopUpView(action: {isErrorPopUpVisible = false})
                        .opacity((isErrorPopUpVisible) ? 1 : 0)
                        .animation(.easeInOut(duration: 0.3))
                    
                    SuccessPopUpView(destinationView: VeggieRecipes())
                        .opacity((isSuccessPopUpVisible) ? 1 : 0)
                        .animation(.easeInOut(duration: 0.3))
                }
            
            }.frame(maxWidth: .infinity)
        .navigationBarBackButtonHidden(true)
        .background(Colors.background)
    }
}
