//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 05/06/24.
//

import SwiftUI

public struct ScaleAnimation: ViewModifier {
    var duration: TimeInterval
    @Binding var startAnimation: Bool

    public init(duration: TimeInterval, startAnimation: Binding<Bool>) {
        self.duration = duration
        self._startAnimation = startAnimation
    }
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(
                initialValue: Properties(),
                trigger: startAnimation
            ) { view, frame in
                view
                    .scaleEffect(frame.scale)
            } keyframes: { prop in
                KeyframeTrack(\.scale) {
                    SpringKeyframe(1.2, duration: duration * 0.3, spring: .bouncy)
                    SpringKeyframe(0.75, duration: duration * 0.15, spring: .snappy)
                    SpringKeyframe(1.15, duration: duration * 0.15, spring: .bouncy)
                    SpringKeyframe(1.0, duration: duration * 0.3, spring: .smooth)
                }
            }
    }
}

