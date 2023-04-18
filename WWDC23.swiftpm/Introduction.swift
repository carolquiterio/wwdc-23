import SwiftUI

struct IntroductionView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
            CustomText(text: "Hi!", textSize: 34)
                    .frame(width: 41)
                    .position(x: 330, y: 96)
                
                Image("carol_normal_mood")
            }
            Spacer()
            VStack {
                CustomText(text: "Meet Carol, a girl who loves to eat but faces difficulty to incorporate vegetables, greens and fruits into her diet. Unfortunately, she relies on fast food and doesn't consider its impact on her health. ", textSize: 34)
                    .padding(40)
                    .frame(width: 703)
                Spacer()
                
                HStack {
                    Spacer()
                        .frame(width: 500)
                    
                    NavigationLink {
                        IntroductionVegView()
                    } label: {
                        HStack {
                            CustomText(text: "Next", textSize: 30, padding: 10)
                                .frame(width: 76)
                            Image("arrow")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 12, height: 30)
                        }
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
        }
            .background(Image("first_screen_bg")
            .resizable()
            .scaledToFill())
            .navigationBarBackButtonHidden(true)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}
