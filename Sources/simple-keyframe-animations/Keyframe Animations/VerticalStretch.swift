//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 11/06/24.
//

import SwiftUI

public struct VerticalStretch: ViewModifier {
    @Binding var duration: TimeInterval
    @Binding var startAnimation: Bool
    public init(duration: Binding<TimeInterval>, startAnimation: Binding<Bool>) {
        self._duration = duration
        self._startAnimation = startAnimation
    }
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startAnimation){ view, frame in
                view
                    .scaleEffect(y: frame.verticalSize)
            } keyframes:{ _ in
                KeyframeTrack(\.verticalSize){
                    CubicKeyframe(0.7, duration: duration * 0.7)
                    CubicKeyframe(1.15, duration: duration * 0.3)
                    SpringKeyframe(1, duration: duration * 1, spring: .bouncy)
                }
            }

    }
}

