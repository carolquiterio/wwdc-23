//
//  VeggieRecipes.swift
//  WWDC23
//
//  Created by Carol Quiterio on 15/04/23.
//

import Foundation
import SwiftUI

struct VeggieRecipesView<Destination: View>: View {
    let isLettuceDisabled: Bool
    let isEggplantDisabled: Bool
    let isTomatoDisabled: Bool
    let isCarrotDisabled: Bool
    let isBananaDisabled: Bool
    let isBroccoliDisabled: Bool
    let destinationView: Destination
    
    @State var color: Color = Colors.background
    @State var name: String = ""
    @State var recipe: String = ""
    @State var vitamins: [String] = [""]
    @State var image: String = ""
    @State var recipeImage: String = ""
    @State var onXClick: () -> Void = {}
    @State var isPopUpVisible = false
    
    @Environment(\.dismiss) private var dismiss    
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
                        CustomText(text: "Congratulations! You helped Carol gather new food. Now, click on them so you can check their vitamins and recipes too.", textSize: 34)
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
                                .fill(Colors.bananaSccondary)
                                .frame(width:224, height:224)
                            Image("veg_banana")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 190)
                            DisabledCircle(isDisabled: isBananaDisabled)
                        }.onTapGesture {
                            isPopUpVisible = true
                            color = Colors.bananaTerciary
                            name = "Banana"
                            recipe = "1. Mix 1 egg, 1 mashed banana, ground cinnamon, 1 tablespoon oat flour, and honey together, and then put the mixture in a frying pan greased with coconut oil. \n 2. Cut 1 banana and put it in the pancake"
                            vitamins = ["Vitamins", "Vitamins", "Vitamins"]
                            image = "veg_banana"
                            recipeImage = "banana_recipe"
                            onXClick = {isPopUpVisible = false}
                        }
                        .disabled(isBananaDisabled)
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

                            DisabledCircle(isDisabled: isLettuceDisabled)
                        }.onTapGesture {
                            isPopUpVisible = true
                            color = Colors.lettuceTerciary
                            name = "Lettuce"
                            recipe = "1. Cook the eggs. \n. Wash the lettuce and put it on a plate. \n3. Place the cheese, eggs, season. \n4. Put the seasoned soybeans on top and the sauce."
                            vitamins = ["Vitamins", "Vitamins", "Vitamins"]
                            image = "veg_lettuce"
                            recipeImage = "veg_lettuce"
                            onXClick = {isPopUpVisible = false}
                        }
                        .disabled(isLettuceDisabled)
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Colors.carrotSccondary)
                                .frame(width:224, height:224)
                            Image("veg_carrot")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 190)
                            DisabledCircle(isDisabled: isCarrotDisabled)
                        }.onTapGesture {
                            isPopUpVisible = true
                            color = Colors.bananaTerciary
                            name = "Banana"
                            recipe = "Banana"
                            vitamins = ["Vitamins", "Vitamins", "Vitamins"]
                            image = "veg_banana"
                            recipeImage = "veg_banana"
                            onXClick = {isPopUpVisible = false}
                        }
                        .disabled(isCarrotDisabled)
                        Spacer()
                    }
                    Spacer().frame(
                        height: 35
                    )
                    HStack {
                        Spacer()
                        ZStack {
                            Circle()
                                .fill(Colors.tomatoSccondary)
                                .frame(width:224, height:224)
                            Image("veg_tomato")
                                .resizable()
                                .scaledToFit()
                                .padding(20)
                                .frame(width: 152)
                            DisabledCircle(isDisabled: isTomatoDisabled)
                        }.onTapGesture {
                            isPopUpVisible = true
                            color = Colors.bananaTerciary
                            name = "Banana"
                            recipe = "Banana"
                            vitamins = ["Vitamins", "Vitamins", "Vitamins"]
                            image = "veg_banana"
                            recipeImage = "veg_banana"
                            onXClick = {isPopUpVisible = false}
                        }
                        .disabled(isBananaDisabled)
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
                            DisabledCircle(isDisabled: isEggplantDisabled)
                        }.onTapGesture {
                            isPopUpVisible = true
                            color = Colors.bananaTerciary
                            name = "Banana"
                            recipe = "Banana"
                            vitamins = ["Vitamins", "Vitamins", "Vitamins"]
                            image = "veg_banana"
                            recipeImage = "veg_banana"
                            onXClick = {isPopUpVisible = false}
                        }
                        .disabled(isEggplantDisabled)
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
                            DisabledCircle(isDisabled: isBroccoliDisabled)
                        }.onTapGesture {
                            isPopUpVisible = true
                            color = Colors.bananaTerciary
                            name = "Banana"
                            recipe = "Banana"
                            vitamins = ["Vitamins", "Vitamins", "Vitamins"]
                            image = "veg_banana"
                            recipeImage = "veg_banana"
                            onXClick = {isPopUpVisible = false}
                        }
                        .disabled(isBroccoliDisabled)
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        NavigationLink {
                            destinationView
                        } label: {
                            HStack {
                                CustomText(text: "Next", textSize: 30, padding: 10)
                                    .frame(width: 76)
                                    .foregroundColor(.black)
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
                RecipePopUpView(
                    color: color,
                    name: name,
                    recipe: recipe,
                    vitamins: vitamins,
                    image: image,
                    recipeImage: recipeImage,
                    onXClick: onXClick
                )
                .opacity(isPopUpVisible ? 1 : 0)
                .animation(.easeInOut(duration: 0.3))
            )
        }.frame(maxWidth: .infinity)
            .navigationBarBackButtonHidden(true)
            .background(Colors.background)
        
    }
}

struct DisabledCircle: View {
    var isDisabled: Bool
    var body: some View {
        Circle()
            .fill(Color.black.opacity(isDisabled ? 0.4 : 0))
            .animation(.easeInOut(duration: 0.3))
            .edgesIgnoringSafeArea(.all)
            .frame(width:224, height:224)
    }
}

