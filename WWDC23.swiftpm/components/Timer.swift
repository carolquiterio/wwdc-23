//
//  File.swift
//  
//
//  Created by Carol Quiterio on 18/04/23.
//

import Foundation
import SwiftUI

struct TimerView: View {
    
    @State var elapsedTime: TimeInterval = 20.0
    @State var isTimerRunning = true
    
    @Binding var notifyTimeReached: Bool
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        HStack {
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Colors.button)
                .frame(width:120, height: 50)
                .overlay(
                    HStack {
                        Image(systemName: "timer")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                            .font(Font.title.weight(.bold))
                            .padding(.leading, 10)
                        CustomText(text: "\(formattedElapsedTime(elapsedTime))s", textSize: 34)
                            .font(.largeTitle)
                            .onReceive(timer) { _ in
                                if self.isTimerRunning {
                                    elapsedTime -= 1
                                    if elapsedTime == 0 {
                                        self.notifyTimeReached = true
                                        self.isTimerRunning = false
                                    }
                                }
                            }.padding(.trailing, 10)
                            .frame(width: 70)
                    }
            )
            
        }
    }
    
    private func formattedElapsedTime(_ interval: TimeInterval) -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.hour, .minute, .second]
        return formatter.string(from: interval)!
    }
}
