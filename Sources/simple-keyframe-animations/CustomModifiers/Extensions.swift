//
//  File.swift
//  
//
//  Created by Júlia Saboya on 12/06/24.
//

import Foundation
import SwiftUI

public extension View {
    func quickShake(duration: TimeInterval, startAnimation: Binding<Bool>) -> some View {
        modifier(QuickShake(duration: 1, startAnimation: startAnimation))
    }
}

public extension View {
    func quickestShake(duration: TimeInterval, startAnimation: Binding<Bool>) -> some View {
        modifier(QuickShake(duration: 1, startAnimation: startAnimation))
    }
}

public extension View {
    func boingEffect(duration: TimeInterval, startAnimation: Binding<Bool>) -> some View {
        self
            .modifier(HorizontalStretch(duration: 1, startAnimation: startAnimation))
            .modifier(VerticalStretch(duration: 1, startAnimation: startAnimation))
    }
}


