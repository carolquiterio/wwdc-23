//
//  ThirdChallenge.swift
//  WWDC23
//
//  Created by Carol Quiterio on 17/04/23.
//

import Foundation
import SwiftUI

struct ThirdChallengeView: View {
    @Environment(\.dismiss) private var dismiss
    @State var isSuccessPopUpVisible = false
    @State var isErrorPopUpVisible = false
    @State var timeReached = false
    
    var body: some View {
        ZStack {
            ZStack {
                VStack(alignment: .center) {
                    Spacer().frame(height: 20)
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
                            .padding(.top, 40)
                        }
                        Spacer()
                        
                        CustomText(text: "Solve the math challenge by finding out how much the broccoli is worth.", textSize: 34)
                            .padding(.top, 40)
                            .frame(maxWidth: 900, maxHeight: .infinity, alignment: .topLeading)
                            .foregroundColor(.black)
                        Spacer()
                        TimerView(notifyTimeReached: $timeReached)
                            .padding(.top, 40)
                        Spacer()
                    }.frame(maxWidth: .infinity)
                    
                    HStack {
                        Image("veg_broccoli")
                            .resizable()
                            .scaledToFit()
                        CustomText(text: "+", textSize : 80, padding: 60)
                            .foregroundColor(.black)
                        Image("veg_carrot")
                            .resizable()
                            .scaledToFit()
                        
                        CustomText(text: "=", textSize : 80, padding: 60)
                        CustomText(text: "30", textSize : 80, padding: 60)
                    }
                    HStack {
                        Image("veg_broccoli")
                            .resizable()
                            .scaledToFit()
                        CustomText(text: "-", textSize : 80, padding: 60)
                        Image("veg_carrot")
                            .resizable()
                            .scaledToFit()
                        CustomText(text: "=", textSize : 80, padding: 60)
                        CustomText(text: "10", textSize : 80, padding: 60)
                    }
                    HStack(alignment: .center) {
                        Spacer().frame(width: 260)
                        Image("veg_broccoli")
                            .resizable()
                            .scaledToFit()
                        CustomText(text: "=", textSize : 80, padding: 60)
                        CustomText(text: "?", textSize : 80, color: Colors.textSeccondary, padding: 60)
                            .alignmentGuide(.leading, computeValue: { _ in 0 })
                    }
                    HStack {
                        
                        CustomButton(text: "20", textSize : 60, action : {isSuccessPopUpVisible = true})
                        CustomButton(text : "10", textSize : 60, action : {isErrorPopUpVisible = true})
                        CustomButton(text : "15", textSize : 60, action : {isErrorPopUpVisible = true})
                        CustomButton(text : "4", textSize : 60, action : {isErrorPopUpVisible = true})
                    }
                    Spacer().frame(height: 20)
                }
                Rectangle()
                    .fill(Color.black.opacity((isErrorPopUpVisible || isSuccessPopUpVisible || timeReached) ? 0.4 : 0))
                    .animation(.easeInOut(duration: 0.3), value: (isErrorPopUpVisible || isSuccessPopUpVisible || timeReached))
                    .edgesIgnoringSafeArea(.all)
            }.overlay(
                ErrorPopUpView(action: {isErrorPopUpVisible = false})
                    .opacity((isErrorPopUpVisible) ? 1 : 0)
                    .animation(.easeInOut(duration: 0.3), value: isErrorPopUpVisible)
            )
            .overlay(
                SuccessPopUpView(destinationView: VeggieRecipesView(
                    isLettuceDisabled: false,
                    isEggplantDisabled: false,
                    isTomatoDisabled: false,
                    isCarrotDisabled: false,
                    isBananaDisabled: false,
                    isBroccoliDisabled: false,
                    text: "Congratulations! You helped Carol gather new food. Now, click on them so you can check their vitamins and recipes too.",
                    destinationView: ConclusionView()
                ))
                .opacity((isSuccessPopUpVisible) ? 1 : 0)
                .animation(.easeInOut(duration: 0.3), value: isSuccessPopUpVisible)
            )
            .overlay(
                TimerPopUpView(destinationView: VeggieRecipesView(
                    isLettuceDisabled: false,
                    isEggplantDisabled: false,
                    isTomatoDisabled: false,
                    isCarrotDisabled: false,
                    isBananaDisabled: false,
                    isBroccoliDisabled: false,
                    text: "Click in the food so you can check their vitamins and recipes.",
                    destinationView: ConclusionView()
                ))
                .opacity((timeReached && !isSuccessPopUpVisible) ? 1 : 0)
                .animation(.easeInOut(duration: 0.3), value: timeReached)
            )
        }.frame(maxWidth: .infinity)
            .navigationBarBackButtonHidden(true)
            .background(Colors.background)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}
