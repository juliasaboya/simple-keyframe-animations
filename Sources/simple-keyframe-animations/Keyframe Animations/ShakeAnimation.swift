//
//  SwiftUIView.swift
//
//
//  Created by Júlia Saboya on 05/06/24.
//

import SwiftUI

public struct ShakeAnimation: ViewModifier {

    //    enum `Type` {
    //        case toggleFill
    //        case `default`
    //    }
    var duration: TimeInterval
    @Binding var startKeyAnimation: Bool

    public init(duration: TimeInterval, startKeyAnimation: Binding<Bool>) {
        self.duration = duration
        self._startKeyAnimation = startKeyAnimation
    }

    public func body(content: Content) -> some View {
        content
            .keyframeAnimator(initialValue: Properties(), trigger: startKeyAnimation) { view, frame in
                // editando a dita cuja
                view
                    .rotationEffect(frame.rotation, anchor: .bottom)
            } keyframes: { _ in
                KeyframeTrack(\.offsetX) {
                    CubicKeyframe(7, duration: 0.05)
                    CubicKeyframe(-7, duration: 0.05)
                    CubicKeyframe(7, duration: 0.05)
                    CubicKeyframe(-7, duration: 0.05)
                    CubicKeyframe(7, duration: 0.05)
                    CubicKeyframe(-7, duration: 0.05)
                    CubicKeyframe(0, duration: 0.05)
                }
                KeyframeTrack(\.rotation){
                    CubicKeyframe(.degrees(12.5), duration: 0.05)
                    CubicKeyframe(.degrees(-12.5), duration: 0.05)
                    CubicKeyframe(.degrees(10), duration: 0.05)
                    CubicKeyframe(.degrees(-10), duration: 0.05)
                    CubicKeyframe(.degrees(5), duration: 0.05)
                    CubicKeyframe(.degrees(-5), duration: 0.05)
                    CubicKeyframe(.degrees(0), duration: 0.05)
                }
            }
    }
    
}



