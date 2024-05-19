//
//  ContentView.swift
//  LottieOnBoarding
//
//  Created by Davide Castaldi on 27/04/24.
//

import SwiftUI
import Lottie

struct LottieAnimation: View {
        
    //DA NAME
    var name: String
    
    //the content mode is for how and where we want to display it
    var contentMode: UIView.ContentMode
    
    //there are many ways to do playback of animations
    var playbackMode: LottiePlaybackMode
    
    //maybe after it finished something should happen?
    var didFinish: (() -> Void)? = nil
    
    //the modifiers 
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    var scaleFactor: CGFloat? = nil
    var cornerRadiusFactor: Double? = nil
    
    var body: some View {
        LottieView(animation: .named(name))
            .configure({ configuration in
                configuration.contentMode = contentMode
            })
            .playbackMode(playbackMode)
            .animationDidFinish({ completed in
                didFinish?()
            })
            .frame(width: width, height: height)
            .scaleEffect(scaleFactor ?? 1)
            .cornerRadius(cornerRadiusFactor ?? 0)
    }
}

#Preview {
    LottieAnimation(name: "TicTacToe", contentMode: .scaleAspectFit, playbackMode: .playing(.fromFrame(1, toFrame: 269, loopMode: .playOnce)))
}
