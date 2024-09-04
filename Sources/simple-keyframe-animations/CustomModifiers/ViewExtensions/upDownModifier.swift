//
//  File.swift
//  
//
//  Created by Júlia Saboya on 22/06/24.
//

import Foundation
import SwiftUI

public extension View {
    func verticalShake(duration: TimeInterval, startAnimation: Binding<Bool>) -> some View {
        modifier(UpDownAnimation(duration: duration, startAnimation: startAnimation))
    }
}
