//
//  ContentView.swift
//  LottieOnBoarding
//
//  Created by Davide Castaldi on 27/04/24.
//

import SwiftUI
import Lottie

struct LottieAnimation: View {
    
    var name: String
    var contentMode: UIView.ContentMode
    var playbackMode: LottiePlaybackMode
    var didFinish: (() -> Void)? = nil
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
    LottieAnimation(name: "Map", contentMode: .center, playbackMode: .playing(.fromFrame(1, toFrame: 269, loopMode: .playOnce)), width: 300, height: 300, scaleFactor: 1, cornerRadiusFactor: 40)
}
