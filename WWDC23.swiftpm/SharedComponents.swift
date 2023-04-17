//
//  SharedComponents.swift
//  WWDC23
//
//  Created by Carol Quiterio on 17/04/23.
//

import Foundation
import SwiftUI

struct CustomButton: View {
    var text: String
    var textSize: CGFloat
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Colors.button, lineWidth: 3.5)
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
                        Text("Next")
                            .frame(width: 61)
                            .font(.custom("Patrick Hand SC", size: 30))
                            .foregroundColor(.black)
                            .padding(10)
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

