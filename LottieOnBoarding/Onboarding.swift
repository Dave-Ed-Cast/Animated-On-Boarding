//
//  Onboarding.swift
//  LottieOnBoarding
//
//  Created by Davide Castaldi on 01/05/24.
//

import SwiftUI

struct Onboarding: View {
    
    //we need 2 variables
    //one knows where we are in the onboarding
    @State var currentStep: Int = 0
    //the other keeps track of the onboarding status
    @Binding var onboardingIsOver: Bool
    
    //this is the array of wall text to make the user read
    var onboardingText: [String] = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
        "Lorem ipsum tunz tunz tempor incididunt tempor incididunt tempor incididunt",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"
    ]
    var body: some View {
        
        VStack(spacing: 50) {
            //the swiftui wrapped animation that we can call so we can use lottie
            LottieAnimation(name: "Map", contentMode: .scaleAspectFit, playbackMode: .playing(.fromFrame(1, toFrame: 269, loopMode: .playOnce)), width: 300, height: 230, scaleFactor: 1.5, cornerRadiusFactor: 20)
            
            Spacer()
            
            //onboarding text
            Text("Title \(currentStep + 1)")
                .font(.title)
                .fontWeight(.bold)
            Text(onboardingText[currentStep])
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Spacer()
            

            Button {
                //some logic for completion of onboarding
                if currentStep < 2 {
                    currentStep += 1
                } else {
                    withAnimation {
                       
                        onboardingIsOver = true
                    }
                }
            } label: {
                //pretty way to display the text according to where we are
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
