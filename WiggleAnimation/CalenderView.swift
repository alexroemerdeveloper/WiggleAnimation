//
//  CalenderView.swift
//  WiggleAnimation
//
//  Created by Alexander Römer on 20.08.20.
//

import Foundation
import SwiftUI

struct CalendarView: View {
    @State private var calendarWiggles = false
    
    var body: some View {
        ZStack { // Calendar
            
            VStack(alignment: .leading) {
                Text("Monday")
                
                Text("30")
                    .font(.system(size: 33))
                
                Spacer()
                Text("No more events today")
                    .frame(width: 150, height: 45, alignment: .leading)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .background(Color.black)
            .cornerRadius(22)
            .foregroundColor(.white)
            
        }
        .frame(width: 170, height: 170, alignment: .leading)
        .overlay(Image(systemName: "minus.circle.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color(.systemGray)).offset(x: -80, y: -80))
        .rotationEffect(.degrees(calendarWiggles ? 0 : 2.5))
        .animation(Animation.easeInOut(duration: 0.15).repeatForever(autoreverses: true))
        .onAppear() {
            calendarWiggles.toggle()
        }
    }
}

