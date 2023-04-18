//
//  ChallengeProposal.swift
//  WWDC23
//
//  Created by Carol Quiterio on 14/04/23.
//

import Foundation
import SwiftUI

struct ChallengeProposalView: View {
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
                        .padding(.top, 40)
                        Spacer()
                    }
                    CustomText(text: "Now, Carol needs help to incorporate the recommended vegetables, greens and fruits into her daily routine. Fortunately, they're been sold near here in exchange for 3 math results.\nCan you help Carol solve the math challenges to pick up the  vitamins and nutrients?", textSize: 34)
                        .padding(.top, 40)
                        .frame(width: 900, height: 345, alignment: .topLeading)
                    Spacer()
                }.frame(maxWidth: .infinity, minHeight:300)
                HStack{
                    Spacer()
                    ZStack {
                        Image("carol_normal_mood")  .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 438)
                        NavigationLink {
                            FirstChallengeView()
                        } label: {
                            HStack {
                                CustomText(text: "I accept the challenge!", textSize: 30)
                                    .frame(width: 290)
                                    .foregroundColor(.black)
                                Image(systemName: "play.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                            }
                            .padding()
                            .frame(width: 362, height: 78)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Colors.button, lineWidth: 4)
                            )
                            .background(Colors.background)
                        }.padding(.top, 350)
                        .padding(.trailing, 40)
                        .padding(.bottom, 30)
                    }
                }
        }
        .background(Image("seccond_screen_bg")
            .resizable()
            .scaledToFill())
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
    }
}

