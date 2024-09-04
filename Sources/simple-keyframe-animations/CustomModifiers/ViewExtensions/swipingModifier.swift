//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 04/09/24.
//

import SwiftUI

public extension View {
    func swiping(duration: TimeInterval, startAnimation: Binding<Bool>, yInitial: Double, yFinal: Double) -> some View {
        modifier(SwipeCanon(duration: duration, startAnimation: startAnimation, yInitial: yInitial, yFinal: yFinal))
    }
}


