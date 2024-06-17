//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 11/06/24.
//

import SwiftUI

public struct HorizontalStretch: ViewModifier {
    let duration: TimeInterval
    @Binding var startAnimation: Bool
    public init(duration: TimeInterval, startAnimation: Binding<Bool>) {
        self.duration = duration
        self._startAnimation = startAnimation
    }
    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startAnimation){ view, frame in
                view
                    .scaleEffect(x: frame.horizontalSize)
            } keyframes:{ _ in
                KeyframeTrack(\.horizontalSize){
                    SpringKeyframe(0.6, duration: 0.5, spring: .bouncy)
                    SpringKeyframe(1.2, duration: 0.5, spring: .bouncy)
                    SpringKeyframe(1, duration: 1, spring: .bouncy)

                }
            }
    }
}
