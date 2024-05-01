//
//  SwiftUIView.swift
//  LottieOnBoarding
//
//  Created by Davide Castaldi on 01/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var onboardingIsOver: Bool
    var body: some View {
        if !onboardingIsOver {
            Onboarding(onboardingIsOver: $onboardingIsOver)
        } else {
            Text("Hello world")
        }
    }
}

#Preview {
    ContentView(onboardingIsOver: false)
}
