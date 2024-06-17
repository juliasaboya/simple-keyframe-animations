//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 11/06/24.
//

import SwiftUI

public struct VerticalStretch: ViewModifier {
    public let duration: TimeInterval
    @Binding var startAnimation: Bool
    public init(duration: TimeInterval, startAnimation: Binding<Bool>) {
        self.duration = duration
        self._startAnimation = startAnimation
    }
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startAnimation){ view, frame in
                view
                    .scaleEffect(y: frame.verticalSize)
            } keyframes:{ _ in
                KeyframeTrack(\.verticalSize){
                    SpringKeyframe(0.7, duration: 1, spring: .bouncy)
                    SpringKeyframe(1, duration: 1, spring: .bouncy)
                }
            }

    }
}

