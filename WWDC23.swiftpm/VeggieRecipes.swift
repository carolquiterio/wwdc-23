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
    let text: String
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
                            .padding(.top, 40)
                            Spacer()
                        }
                        Spacer().frame(width:10)
                        CustomText(text: text, textSize: 34)
                            .padding(.top, 40)
                            .frame(maxWidth: 900, maxHeight: .infinity, alignment: .topLeading)
                            .foregroundColor(.black)
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
                            recipe = "1. Mix 1 egg, 1 mashed banana, ground cinnamon, 1 tablespoon oat flour, and honey together.\n2. Put the mixture in a frying pan greased with coconut oil. \n3. Cut 1 banana and put it in the pancake"
                            vitamins = ["A", "C", "B1, B2, B6, B9"]
                            image = "veg_banana"
                            recipeImage = "recipe_banana"
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
                            recipe = "1. Separate the olives, lettuce, cherry tomatoes, and kale. \n2. Wash and dry the tomatoes and leaves of lettuce and Chinese kale.\n3. Assemble the salad and season it."
                            vitamins = ["A", "C"]
                            image = "veg_lettuce"
                            recipeImage = "recipe_lettuce"
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
                            color = Colors.carrotTerciary
                            name = "Carrot"
                            recipe = "1. Wash, peel and cut the carrots into sticks.\n2. Season with olive oil, paprika and oregano and mix well.\n3. Preheat for 5 minutes, and then place the carrots for 15 minutes."
                            vitamins = ["A", "C", "K"]
                            image = "veg_carrot"
                            recipeImage = "recipe_carrot"
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
                            color = Colors.tomatoTerciary
                            name = "Tomato"
                            recipe = "1. Separate tomato, onion, oregano, salt and butter.\n2. Put all of them and cook over very low heat. \n3. Stir occasionally, crush the large tomato pieces and remove after 30 minutes."
                            vitamins = ["A", "C", "K"]
                            image = "veg_tomato"
                            recipeImage = "recipe_tomato"
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
                            color = Colors.eggplantTerciary
                            name = "Eggplant"
                            recipe = "1. Wash the eggplants.\nCut the eggplants lengthwise.\n2. Mix well the honey, olive oil, salt, cumin, and turmeric with the eggplant.\n3. Place in a preheated oven and bake for 30-40 minutes."
                            vitamins = ["B", "C", "K", "A"]
                            image = "veg_eggplant"
                            recipeImage = "recipe_eggplant"
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
                            color = Colors.broccoliTerciary
                            name = "Broccoli"
                            recipe = "1. Place the broccoli in a food processor and blend it.\n2. Finely chop the onion.\n3. Mix cheese, egg, salt, onion and broccoli.\n4. Place the mixture in a frying pan with a little olive oil and fry on both sides."
                            vitamins = ["C", "E", "A"]
                            image = "veg_broccoli"
                            recipeImage = "recipe_broccoli"
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
                    .edgesIgnoringSafeArea(.all)
                    .animation(.easeInOut(duration: 0.3), value: isPopUpVisible)

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
                .animation(.easeInOut(duration: 0.3), value: isPopUpVisible)
            )
        }.frame(maxWidth: .infinity)
            .navigationBarBackButtonHidden(true)
            .background(Colors.background.ignoresSafeArea(edges: .all))
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}

struct DisabledCircle: View {
    var isDisabled: Bool
    var body: some View {
        Circle()
            .fill(Color.black.opacity(isDisabled ? 0.4 : 0))
            .animation(.easeInOut(duration: 0.3), value: isDisabled)
            .edgesIgnoringSafeArea(.all)
            .frame(width:224, height:224)
    }
}

