//
//  SwiftUIView.swift
//  LottieOnBoarding
//
//  Created by Davide Castaldi on 01/05/24.
//

import SwiftUI

struct ContentView: View {
    
    //we define the onboarding key
    let onboardingStatusKey = "OnboardingStatus"
        
        //check if we need to run it
        @State var onboardingIsOver: Bool = UserDefaults.standard.bool(forKey: "OnboardingStatus")
        
        var body: some View {
            //and if it's the first launch
            if !onboardingIsOver {
                //we run it
                Onboarding(onboardingIsOver: $onboardingIsOver)
                //and after the user completed it
                    .onDisappear {
                        //we save its value
                        UserDefaults.standard.set(true, forKey: onboardingStatusKey)
                    }
            } else {
                //DA MAGICAL VIEW
                Text("Hello world")
            }
        }
}

#Preview {
    ContentView(onboardingIsOver: false)
}
