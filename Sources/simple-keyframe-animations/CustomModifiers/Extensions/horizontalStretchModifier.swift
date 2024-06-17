//
//  File.swift
//  
//
//  Created by Júlia Saboya on 16/06/24.
//

import Foundation
import SwiftUI

public extension View {
    func horizontalStretch(duration: TimeInterval, startAnimaton: Binding<Bool>) -> some View {
        modifier(HorizontalStretch(duration: 1, startAnimation: startAnimaton))
    }
}
