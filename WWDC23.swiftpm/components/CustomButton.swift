//
//  File.swift
//
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
