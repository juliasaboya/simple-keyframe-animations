//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 04/09/24.
//

import SwiftUI

public struct SwipeCanon: ViewModifier {
    var duration: TimeInterval
    public var properties = Properties(scale: 0)
    @Binding var startAnimation: Bool
    var yInitial: Double
    var yFinal: Double

    public init(duration: TimeInterval, startAnimation: Binding<Bool>, yInitial: Double, yFinal: Double) {
        self.duration = duration
        self._startAnimation = startAnimation
        self.yInitial = yInitial
        self.yFinal = yFinal
    }

    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(offsetY: yInitial), trigger: startAnimation) { view, frame in
                view
                    .offset(y: frame.offsetY)
            } keyframes: { _ in
                KeyframeTrack(\.offsetY) {
                    SpringKeyframe(yFinal, duration: 0.5)

                }

            }

    }
}



