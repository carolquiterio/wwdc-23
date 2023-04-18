//
//  File.swift
//  
//
//  Created by Carol Quiterio on 17/04/23.
//

import Foundation
import SwiftUI

struct SuccessPopUpView<Destination: View>: View {
    let destinationView: Destination
    
    var body: some View {
        VStack {
            HStack {
                CustomText(text: "Nice job!", textSize: 40)
            }

            HStack(alignment: .center) {
                Image("carol_happy_mood").resizable()
                    .scaledToFit()
                    .frame(width: 315, height: 129)
                Image("check").resizable()
                    .scaledToFit()
                    .frame(width: 124, height: 76)
            }
            HStack {
                CustomText(text: "You won new vitamins with these foods.", textSize: 40).frame(width: 360).multilineTextAlignment(.center)
                
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
