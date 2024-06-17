//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 07/06/24.
//

import SwiftUI

public struct QuickShake: ViewModifier {
    let duration: TimeInterval
    @Binding var startAnimation: Bool
    public init(duration: TimeInterval, startAnimation: Binding<Bool>) {
        self.duration = duration
        self._startAnimation = startAnimation
    }
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startAnimation) { view, frame in
                view
                    .rotationEffect(frame.rotation)
            } keyframes: { _ in
                KeyframeTrack(\.rotation){
                    LinearKeyframe(Angle(degrees: 15), duration: 0.1)
                    LinearKeyframe(Angle(degrees: -15), duration: 0.1)
                    LinearKeyframe(Angle(degrees: 20), duration: 0.1)
                    LinearKeyframe(Angle(degrees: -20), duration: 0.1)
                    LinearKeyframe(Angle(degrees: 15), duration: 0.1)
                    LinearKeyframe(Angle(degrees: -15), duration: 0.1)
                    LinearKeyframe(Angle(degrees: 0), duration: 0.1)


                }
            }
    }
}


