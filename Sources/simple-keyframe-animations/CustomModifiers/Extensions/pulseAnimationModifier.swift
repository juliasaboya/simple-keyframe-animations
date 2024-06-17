//
//  File.swift
//  
//
//  Created by Júlia Saboya on 16/06/24.
//

import Foundation
import SwiftUI

public extension View {
    func pulseAnimation(duration: TimeInterval, startAnimation: Binding<Bool>) -> some View {
            modifier(ScaleAnimation(duration: 1, startAnimation: startAnimation))
    }
}
