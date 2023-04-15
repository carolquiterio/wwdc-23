import SwiftUI

struct IntroductionView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                
                Text("Hi!")
                    .frame(width: 41)
                    .font(.custom("Patrick Hand SC", size: 34))
                    .position(x: 330, y: 96)
                
                Image("carol_normal_mood")
                
            }
            Spacer()
            VStack {
                Text("Meet Carol, a girl who loves to eat but faces difficulty to incorporate vegetables, greens and fruits into her diet. Unfortunately, she relies on fast food and doesn't consider its impact on her health. ")
                    .frame(width: 643)
                    .font(.custom("Patrick Hand SC", size: 34))
                    .padding(40)
                Spacer()
                
                HStack {
                    Spacer()
                        .frame(width: 500)
                    
                    NavigationLink {
                        IntroductionVegView()
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
                            .frame(width: 178, height: 78)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Colors.buttonColor, lineWidth: 4)
                            )
                    }.padding(.trailing, 40)
                        .padding(.bottom, 30)
                }
            }
        }.background(Image("first_screen_bg")
            .resizable()
            .scaledToFill())
    }
}
