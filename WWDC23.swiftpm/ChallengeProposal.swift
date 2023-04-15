//
//  ChallengeProposal.swift
//  WWDC23
//
//  Created by Carol Quiterio on 14/04/23.
//

import Foundation
import SwiftUI

struct ChallengeProposal: View {
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
                                    .stroke(Colors.buttonColor, lineWidth: 3.5)
                            )
                    }
                    .padding(.leading, 15)
                    .padding(.top, 35)
                    Spacer()
                }
                Text("Now, Carol needs help to incorporate the recommended vegetables, greens and fruits into her daily routine. Fortunately, they're been sold near here in exchange for math results.\nCan you help Carol solve the math challenges to pick up the  vitamins and nutrients?")
                    .font(.custom("Patrick Hand SC", size: 34))
                    .padding(.top, 40)
                    .frame(maxWidth: 900, maxHeight: .infinity, alignment: .topLeading)
                Spacer()
            }.frame(maxWidth: .infinity)
        
            
            ZStack {
                Spacer()
                Image("carol_normal_mood")  .resizable()
                    .scaledToFit()
                    .frame(width: 200, alignment: .center)
                    .clipped()
                    .offset(y: -100)//.resizable()
                NavigationLink {
                    Challenge()
                } label: {
                    HStack {
                        Text("I accept the challenge!")
                            .frame(width: 290)
                            .font(.custom("Patrick Hand SC", size: 30))
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
                            .stroke(Colors.buttonColor, lineWidth: 4)
                    )
                    .background(Colors.background)
                }
                .padding(.trailing, 40)
                .padding(.bottom, 30)
            }
        }
        .background(Image("seccond_screen_bg")
            .resizable()
            .scaledToFill())
        .navigationBarBackButtonHidden(true)
    }
}
