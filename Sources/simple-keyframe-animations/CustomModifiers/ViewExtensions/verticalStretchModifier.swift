//
//  File.swift
//  
//
//  Created by Júlia Saboya on 22/06/24.
//

import Foundation
import SwiftUI

public extension View {
    func verticalStretch(duration: Binding<TimeInterval>, startAnimation: Binding<Bool>) -> some View {
        modifier(VerticalStretch(duration: duration, startAnimation: startAnimation))
    }
}
