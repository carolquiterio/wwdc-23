//
//  File.swift
//  
//
//  Created by Carol Quiterio on 17/04/23.
//

import Foundation
import SwiftUI

struct CustomText: View {
    var text: String
    var textSize: CGFloat
    var color: Color = .black
    var padding: CGFloat = 1
    
    var body: some View {
        Text(text)
            .font(.custom("Patrick Hand SC", size: textSize))
            .foregroundColor(color)
            .padding(.horizontal, padding)
        }
}
