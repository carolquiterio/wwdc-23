//
//  File.swift
//  
//
//  Created by Carol Quiterio on 18/04/23.
//

import Foundation
import SwiftUI

struct TimerPopUpView<Destination: View>: View {
    let destinationView: Destination
    
    var body: some View {
        VStack {
            HStack {
                CustomText(text: "Time Over.", textSize: 40)
            }
            
            HStack(alignment: .center) {
                Spacer()
                Image("carol_sad_mood").resizable()
                    .scaledToFit()
                    .frame(width: 315, height: 129)
                Image(systemName: "timer").resizable()
                    .scaledToFit()
                    .frame(width: 124, height: 76)
                Spacer()
            }
            HStack {
                CustomText(text: "But don't worry, you will still be able to check the recipe of the veggies.", textSize: 40).frame(width: 450).multilineTextAlignment(.center)
                
                NavigationLink (destination: destinationView)
                {
                    HStack {
                        CustomText(text: "Next", textSize: 30, padding: 6)
                            .frame(width: 80)
                            .foregroundColor(.black)
                        Image("arrow")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 7, height: 20)
                    }
                    .padding()
                    .frame(width: 143, height: 63)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Colors.button, lineWidth: 4)
                    )
                }
            }
        }.padding(30)
            .background(Colors.backgroundSeccondary)
            .cornerRadius(10)
            .frame(width: 754, height: 520)
    }
}
