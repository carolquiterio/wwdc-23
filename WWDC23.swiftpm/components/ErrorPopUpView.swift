//
//  File.swift
//
//  Created by Carol Quiterio on 17/04/23.
//

import Foundation
import SwiftUI


struct ErrorPopUpView: View {
    @State private var isRotating = false
    let action: () -> Void

    var body: some View {
        VStack {
            HStack {
                CustomText(text: "Not exactly.", textSize: 40)
            }

            HStack(alignment: .center) {
                Image("carol_sad_mood").resizable()
                    .scaledToFit()
                    .frame(width: 315, height: 129)
            }
            HStack() {
                CustomText(text: "How about to try again?", textSize: 40).frame(width: 360).multilineTextAlignment(.center).padding(.horizontal, 20)
                
                Button {
                    isRotating.toggle()
                    action()
                } label: {
                    HStack {
                        Image(systemName: "arrow.clockwise")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 26)
                            .font(Font.title.weight(.bold))
                            .foregroundColor(.black)
                            .rotationEffect(isRotating ? .degrees(360) : .degrees(0))
                    }
                    .padding()
                    .frame(width: 143, height: 63)
                    .overlay(
                        Circle()
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

