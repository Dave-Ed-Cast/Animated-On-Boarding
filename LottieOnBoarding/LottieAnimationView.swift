//
//  ContentView.swift
//  LottieOnBoarding
//
//  Created by Davide Castaldi on 27/04/24.
//

import SwiftUI
import Lottie

struct LottieAnimationView: View {
    
    var fileName: String = "Loading"
    var contentMode: UIView.ContentMode = .scaleAspectFill
    var playLoopMode: LottieLoopMode = .playOnce
    var didFinish: (() -> Void)? = nil
    var body: some View {
        LottieView(animation: .named(fileName))
            .configure({ configuration in
                configuration.contentMode = contentMode
            })
            .playbackMode(.playing(.toProgress(1, loopMode: playLoopMode)))
            .animationDidFinish({ completed in
                didFinish?()
            })
    }
}

#Preview {
    LottieAnimationView(fileName: "Loading", contentMode: .center, playLoopMode: .loop)
}
