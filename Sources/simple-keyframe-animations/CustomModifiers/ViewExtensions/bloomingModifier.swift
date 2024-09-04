//
//  File.swift
//  
//
//  Created by Júlia Saboya on 23/06/24.
//

import Foundation
import SwiftUI
public extension View {
    func blooming(duration: TimeInterval, startAnimation: Binding<Bool>) -> some View {
        modifier(AppearingLetters(duration: duration, startAnimation: startAnimation))
    }
}
