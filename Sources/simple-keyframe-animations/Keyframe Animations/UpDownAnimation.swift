//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 06/06/24.
//

import SwiftUI

public struct UpDownAnimation: ViewModifier {
    var duration: TimeInterval
    @Binding var startAnimation: Bool

    public init(duration: TimeInterval, startAnimation: Binding<Bool>) {
        self.duration = duration
        self._startAnimation = startAnimation
    }
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startAnimation) { view, frame in
                view
                    .offset(y: frame.offsetY)
            } keyframes: { _ in
                KeyframeTrack(\.offsetY) {
                    CubicKeyframe(7, duration: duration * 0.05)
                    CubicKeyframe(-7, duration: duration * 0.05)
                    CubicKeyframe(7, duration: duration * 0.05)
                    CubicKeyframe(-7, duration: duration * 0.05)
                    CubicKeyframe(7, duration: duration * 0.05)
                    CubicKeyframe(-7, duration: duration * 0.05)
                    CubicKeyframe(0, duration: duration * 0.05)
                }
                
            }
    }
}

