//
//  Onboarding.swift
//  LottieOnBoarding
//
//  Created by Davide Castaldi on 01/05/24.
//

import SwiftUI

struct Onboarding: View {
    
    @State var currentStep: Int = 0
    @Binding var onboardingIsOver: Bool
    
    var onboardingText: [String] = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
        "Lorem ipsum tunz tunz tempor incididunt tempor incididunt tempor incididunt",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"
    ]
    var body: some View {
        
        VStack(spacing: 50) {
            LottieAnimation(name: "Map", contentMode: .scaleAspectFit, playbackMode: .playing(.fromFrame(1, toFrame: 269, loopMode: .playOnce)), width: 300, height: 230, scaleFactor: 1.5, cornerRadiusFactor: 20)
            Spacer()
            Text("Title")
                .font(.title)
                .fontWeight(.bold)
            Text(onboardingText[currentStep])
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Spacer()
            Button {
                if currentStep < 2 {
                    currentStep += 1
                } else {
                    withAnimation {
                        onboardingIsOver = true
                    }
                }
            } label: {
                Text(currentStep == 2 ? "Done" : "Continue")
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
            }
            .background(.red)
            .cornerRadius(10)
            
        }
        .padding()
        .padding(.bottom, 50)
    }
}


#Preview {
    Onboarding(onboardingIsOver: .constant(false))
}
