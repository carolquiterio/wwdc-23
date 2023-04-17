//
//  IntroductionVeg.swift
//  WWDC23
//
//  Created by Carol Quiterio on 14/04/23.
//

import Foundation
import SwiftUI

struct IntroductionVegView: View {
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
                Text("One day, during a routine check-up, Carol learned that her unhealthy diet was lacking essential vitamins and nutrients. To solve this, her doctor prescribed a new diet with a focus on increasing her veggies intake.")
                    .font(.custom("Patrick Hand SC", size: 34))
                    .padding(.top, 40)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                Spacer()
            }.frame(maxWidth: .infinity)
            HStack {
                Image("veg_lettuce")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                Image("veg_banana")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                Image("veg_eggplant")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
            }
            HStack {
                Image("veg_carrot")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                Image("veg_tomato")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
                Image("veg_broccoli")
                    .resizable()
                    .scaledToFit()
                    .padding(20)
            }
      
            
            HStack {
                Spacer()
                NavigationLink {
                    ChallengeProposal()
                } label: {
                    HStack {
                        Text("Next")
                            .frame(width: 76)
                            .font(.custom("Patrick Hand SC", size: 30))
                            .foregroundColor(.black)
                            .padding(10)
                        Image("arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12, height: 30)
                    }
                    .padding()
                    .frame(width: 178, height: 78)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Colors.button, lineWidth: 4)
                    )
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

