//
//  File.swift
//  
//
//  Created by Júlia Saboya on 16/06/24.
//

import Foundation
import SwiftUI

public extension View {
    func boingEffect(duration: TimeInterval, startAnimation: Binding<Bool>) -> some View {
        self
            .modifier(HorizontalStretch(duration: duration, startAnimation: startAnimation))
            .modifier(VerticalStretch(duration: duration, startAnimation: startAnimation))
    }
}
