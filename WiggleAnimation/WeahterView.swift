//
//  WeahterView.swift
//  WiggleAnimation
//
//  Created by Alexander Römer on 20.08.20.
//

import Foundation
import SwiftUI

struct WeatherView: View {
    
    @State private var weatherWiggles = false
        
    var body: some View {
        ZStack { // Weather
            
            VStack(alignment: .leading) {
                Text("Monday")
                
                Text("30°")
                    .font(.system(size: 44))
                    .fontWeight(.bold)
                
                Spacer()
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)
                Text("Partly Cloudy")
                    .frame(width: 150, height: 20, alignment: .leading)
                Text("H:30° L:07°")
                    
            }
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(22)
            .foregroundColor(.white)
            
        }
        .frame(width: 170, height: 170, alignment: .leading)
        .overlay(Image(systemName: "minus.circle.fill").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color(.systemGray)).offset(x: -80, y: -80))
        .rotationEffect(.degrees(weatherWiggles ? 2.5 : 0))
        .animation(Animation.easeInOut(duration: 0.15).repeatForever(autoreverses: true))
        .onAppear() {
            weatherWiggles.toggle()
        }

    }
}


