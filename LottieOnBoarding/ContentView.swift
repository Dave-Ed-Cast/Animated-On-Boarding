//
//  ContentView.swift
//  LottieOnBoarding
//
//  Created by Davide Castaldi on 27/04/24.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        LottieView(animation: .named("Loading"))
    }
}

#Preview {
    ContentView()
}
