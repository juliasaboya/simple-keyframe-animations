//
//  File.swift
//  
//
//  Created by Júlia Saboya on 16/06/24.
//

import Foundation
import SwiftUI

public extension View {
    func horizontalStretch(duration: Binding<TimeInterval>, startAnimation: Binding<Bool>) -> some View {
        modifier(HorizontalStretch(duration: duration, startAnimation: startAnimation))
    }
}
