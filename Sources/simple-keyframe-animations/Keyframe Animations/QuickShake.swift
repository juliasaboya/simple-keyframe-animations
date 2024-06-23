//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 07/06/24.
//

import SwiftUI

public struct QuickShake: ViewModifier {
    @Binding var duration: TimeInterval
    @Binding var startAnimation: Bool
    public init(duration: Binding<TimeInterval>, startAnimation: Binding<Bool>) {
        self._duration = duration
        self._startAnimation = startAnimation
    }
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startAnimation) { view, frame in
                view
                    .rotationEffect(frame.rotation)
            } keyframes: { _ in
                KeyframeTrack(\.rotation){
                    LinearKeyframe(Angle(degrees: 15), duration: duration * 0.1)
                    LinearKeyframe(Angle(degrees: -15), duration: duration * 0.1)
                    LinearKeyframe(Angle(degrees: 20), duration: duration * 0.1)
                    LinearKeyframe(Angle(degrees: -20), duration: duration * 0.1)
                    LinearKeyframe(Angle(degrees: 15), duration: duration * 0.1)
                    LinearKeyframe(Angle(degrees: -15), duration: duration * 0.1)
                    LinearKeyframe(Angle(degrees: 0), duration: duration * 0.1)
                }
            }
    }
}


