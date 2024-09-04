//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 12/06/24.
//

import SwiftUI

public struct AppearingLetters: ViewModifier {
    var duration: TimeInterval 
    public var properties = Properties(scale: 0)
    @Binding var startAnimation: Bool
    public init(duration: TimeInterval, startAnimation: Binding<Bool>) {
        self.duration = duration
        self._startAnimation = startAnimation
    }

    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: properties, trigger: startAnimation) { view, frame in
                view
                    .scaleEffect(frame.scale)
            } keyframes: { _ in
                KeyframeTrack(\.scale) {
                    SpringKeyframe(1.3, duration: duration * 0.5, spring: .bouncy(extraBounce: 0.2))
                    LinearKeyframe(1, duration: duration * 0.3)
                }
            }
    }
}
