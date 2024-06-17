//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 11/06/24.
//

import SwiftUI

public struct QuickestShake: ViewModifier {
    let duration: TimeInterval
    private let frameDuration = 0.05
    @Binding var startKeyAnimation: Bool
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startKeyAnimation) { view, frame in
                view
                    .rotationEffect(frame.rotation)
            } keyframes: { _ in
                KeyframeTrack(\.rotation){
                    LinearKeyframe(Angle(degrees: 15), duration: frameDuration)
                    LinearKeyframe(Angle(degrees: -15), duration: frameDuration)
                    LinearKeyframe(Angle(degrees: 20), duration: frameDuration)
                    LinearKeyframe(Angle(degrees: -20), duration: frameDuration)
                    LinearKeyframe(Angle(degrees: 15), duration: frameDuration)
                    LinearKeyframe(Angle(degrees: -15), duration: frameDuration)
                    LinearKeyframe(Angle(degrees: 0), duration: frameDuration)
                }
            }
    }
}


