//
//  Conclusion.swift
//  WWDC23
//
//  Created by Carol Quiterio on 17/04/23.
//

import Foundation
import SwiftUI

struct ConclusionView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
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
                CustomText(text: "Carol now understands that vegetables and greens can be delicious when cooked in recipes with foods she already enjoys. She has discovered the opportunity to improve her health and experiment new ingredients and dishes.", textSize: 34)
                    .padding(.top, 40)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).multilineTextAlignment(.center)
                Spacer()
            }.frame(maxWidth: .infinity)
            
            VStack {
                Image("carol_normal_mood_with_veggies")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 348, height: 560)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                ZStack {
                    HStack {
                        Spacer()
                        NavigationLink {
                            IntroductionView()
                        } label: {
                            HStack {
                                CustomText(text: "Start Again", textSize: 30)
                                    .frame(width: 140)
                                    .foregroundColor(.black)
                                    .padding(10)
                                Image(systemName: "arrow.clockwise")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.black)
                                    .font(Font.title.weight(.bold))
                                Spacer()
                            }
                            .padding()
                            .frame(width: 240, height: 78)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Colors.button, lineWidth: 4)
                            )
                        }
                        .padding(.trailing, 40)
                        .padding(.bottom, 30)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                }
            )
        }
        .background(Image("seccond_screen_bg")
            .resizable()
            .scaledToFill())
        .navigationBarBackButtonHidden(true)
    }
}

