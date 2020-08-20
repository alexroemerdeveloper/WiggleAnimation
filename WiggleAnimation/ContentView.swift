//
//  ContentView.swift
//  WiggleAnimation
//
//  Created by Alexander Römer on 20.08.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 30) {
                CalendarView()
                WeatherView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
