//
//  File.swift
//  
//
//  Created by Carol Quiterio on 17/04/23.
//

import Foundation
import SwiftUI

struct RecipePopUpView: View {
    var color: Color
    var name: String
    var recipe: String
    var vitamins: [String]
    var image: String
    var recipeImage: String
    var onXClick: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Image(image).resizable().scaledToFit().frame(width: 62)
                CustomText(text: name, textSize: 40)
                Spacer()
                Button {
                    onXClick()
                } label: {
                    HStack {
                        CustomText(text: "X", textSize: 20, padding: 10)
                            .frame(width: 61)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .frame(width: 38, height: 38)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Colors.button, lineWidth: 4)
                    )
                }
            }
            
            
            HStack(alignment: .center) {
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .overlay(
                        HStack {
                            VStack(alignment: .leading) {
                                CustomText(text:"Vitamins:", textSize:30)
                                ForEach(vitamins, id: \.self) { vitamin in
                                    HStack {
                                        Image("check").resizable().scaledToFit().frame(width: 25)
                                        CustomText(text:vitamin, textSize:26)
                                        Spacer()
                                    }
                                }
                                Spacer()
                            }.padding()
                        }
                    )
                    .foregroundColor(Colors.backgroundTerciary)
                    .frame(width:248, height: 384)
                    .shadow(color: Color.black.opacity(0.05), radius: 1, x: 0, y: 4)
                Spacer()
                
                RoundedRectangle(cornerRadius: 10)
                    .overlay(
                        HStack {
                            VStack(alignment: .leading) {
                                CustomText(text:"Recipe:", textSize:30)
                                CustomText(text:recipe, textSize:26)
                                Spacer()
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()

                            VStack {
                                Image(recipeImage).resizable().scaledToFit().frame(width: 187).cornerRadius(3)
                            }.padding(.all, 20)

                            Spacer()
                        }
                    )
                    .foregroundColor(Colors.backgroundTerciary)
                    .shadow(color: Color.black.opacity(0.05), radius: 1, x: 0, y: 4)
                    .frame(width:477, height: 384)
                Spacer()
                
            }
            
            
        }.padding(30)
            .background(color)
            .cornerRadius(10)
            .frame(width: 868, height: 582)
    }
}
