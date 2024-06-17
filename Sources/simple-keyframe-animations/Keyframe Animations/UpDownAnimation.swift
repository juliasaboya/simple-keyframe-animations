//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 06/06/24.
//

import SwiftUI

public struct UpDownAnimation: ViewModifier {
    public let duration: TimeInterval
    @Binding var startKeyAnimation: Bool

    public init(duration: TimeInterval, startKeyAnimation: Binding<Bool>) {
        self.duration = duration
        self._startKeyAnimation = startKeyAnimation
    }
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startKeyAnimation) { view, frame in
                view
                    .offset(y: frame.offsetY)
            } keyframes: { _ in
                KeyframeTrack(\.offsetY) {
                    CubicKeyframe(7, duration: 0.05)
                    CubicKeyframe(-7, duration: 0.05)
                    CubicKeyframe(7, duration: 0.05)
                    CubicKeyframe(-7, duration: 0.05)
                    CubicKeyframe(7, duration: 0.05)
                    CubicKeyframe(-7, duration: 0.05)
                    CubicKeyframe(0, duration: 0.05)
                }
                
            }
    }
}

