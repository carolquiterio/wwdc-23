//
//  VeggieRecipes.swift
//  WWDC23
//
//  Created by Carol Quiterio on 15/04/23.
//

import Foundation

import SwiftUI

struct VeggieRecipes: View {
    @Environment(\.dismiss) private var dismiss
    @State var isPopUpVisible = false
    
    var body: some View {
        ZStack {
            ZStack {
                
                VStack() {
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
                        Spacer()
                        Text("Congratulations! You helped Carol gather new food. Now, click on them so you can check their vitamins and recipes too.")
                            .font(.custom("Patrick Hand SC", size: 34))
                            .padding(.top, 40)
                            .frame(maxWidth: 900, maxHeight: .infinity, alignment: .topLeading)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Colors.lettuceSccondary)
                                .frame(width:224, height:224)
                            Image("veg_lettuce")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 190)
                        }.onTapGesture {
                            isPopUpVisible = true
                        }
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Colors.bananaSccondary)
                                .frame(width:224, height:224)
                            
                            Image("veg_banana")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 190)
                        }
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Colors.eggplantSccondary)
                                .frame(width:224, height:224)
                            Image("veg_eggplant")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 190)
                        }
                        Spacer()
                    }
                    Spacer().frame(
                        height: 35
                    )
                    HStack {
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Colors.carrotSccondary)
                                .frame(width:224, height:224)
                            Image("veg_carrot")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 152)
                        }
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Colors.tomatoSccondary)
                                .frame(width:224, height:224)
                            Image("veg_tomato")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 190)
                        }
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Colors.broccoliSccondary)
                                .frame(width:224, height:224)
                            Image("veg_broccoli")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 190)
                            
                        }
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        NavigationLink {
                            Conclusion()
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
                Rectangle()
                    .fill(Color.black.opacity(isPopUpVisible ? 0.4 : 0))
                    .animation(.easeInOut(duration: 0.3))
                    .edgesIgnoringSafeArea(.all)
            }.overlay(
                RecipePopUpVieww(
                    color: Colors.lettuceTerciary,
                    name: "Lettuce",
                    recipe: "veg_image",
                    vitamins: ["Carol", "Yes"],
                    image:"veg_lettuce",
                    recipeImage: "veg_lettuce",
                    onXClick: {isPopUpVisible = false}
                )
                .opacity(isPopUpVisible ? 1 : 0)
                .animation(.easeInOut(duration: 0.3))
            )
        }.frame(maxWidth: .infinity)
            .navigationBarBackButtonHidden(true)
            .background(Colors.background)
        
    }
}

struct RecipePopUpVieww: View {
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
                        Text("X")
                            .frame(width: 61)
                            .font(.custom("Patrick Hand SC", size: 20))
                            .foregroundColor(.black)
                            .padding(10)
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
                                CustomText(text:"Vitamins:", textSize:25)
                                ForEach(vitamins, id: \.self) { vitamin in
                                    HStack {
                                        Image("check").resizable().scaledToFit().frame(width: 20)
                                        CustomText(text:vitamin, textSize:20)
                                        Spacer()
                                    }
                                }
                                Spacer()
                            }.padding()
                        }
                    )
                    .foregroundColor(Colors.backgroundTerciary)
                    .frame(width:248, height: 384)
                Spacer()
                
                RoundedRectangle(cornerRadius: 10)
                    .overlay(
                        HStack {
                            VStack(alignment: .leading) {
                                CustomText(text:"Recipe: ", textSize:25)
                                CustomText(text:recipe, textSize:20)
                                Spacer()
                            }.padding().frame(width: 225, height: 360)
                            Spacer()
                            
                            VStack() {
                                Image("lettuce_recipe").resizable().scaledToFit().frame(width: 187).cornerRadius(3)
                            }.padding(.all, 20)
                        }
                    )
                
                    .foregroundColor(Colors.backgroundTerciary)
                    .frame(width:477, height: 384)
                Spacer()
                
            }
            
            
        }.padding(30)
            .background(color)
            .cornerRadius(10)
            .frame(width: 868, height: 582)
    }
}

