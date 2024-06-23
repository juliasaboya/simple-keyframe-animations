//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 16/06/24.
//

import SwiftUI

struct AnimationsFullCatalog: View {
    @State var startAnimation1: Bool = false
    @State var startAnimation2: Bool = false
    @State var startAnimation3: Bool = false
    @State var startAnimation4: Bool = false
    @State var startAnimation5: Bool = false
    @State var startAnimation6: Bool = false

    var body: some View {
        HStack(alignment: .top) {
            VStack(spacing: 32) {
                Text("Bloom Effect")
                    .onTapGesture {
                        startAnimation1.toggle()
                    }
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .blooming(duration: .constant(1), startAnimation: $startAnimation1)
                Text("QuickShake Animation")
                    .multilineTextAlignment(.center)
                Image(systemName: "bell.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .quickShake(duration: .constant(1), startAnimation: $startAnimation3)
                    .onTapGesture {
                        startAnimation3.toggle()
                    }
                Text("Horizontal Stretch")
                    .multilineTextAlignment(.center)
                Image(systemName: "arrowshape.right.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .horizontalStretch(duration: .constant(1), startAnimation: $startAnimation5)
                    .onTapGesture {
                        startAnimation5.toggle()
                    }
            }
            Spacer()
            VStack(spacing: 32) {
                Text("Pulse Animation")
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .pulseAnimation(duration: .constant(1), startAnimation: $startAnimation2)
                    .onTapGesture {
                        startAnimation2.toggle()
                    }
                Text("Vertical Shake Animation")
                    .multilineTextAlignment(.center)
                Image(systemName: "lock.rotation")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .verticalShake(duration: .constant(1), startAnimation: $startAnimation4)
                    .onTapGesture {
                        startAnimation4.toggle()
                    }
                Text("Vertical Stretch")
                .multilineTextAlignment(.center)
                Image(systemName: "globe.americas.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .verticalStretch(duration: .constant(0.5), startAnimation: $startAnimation6)
                    .onTapGesture {
                        startAnimation6.toggle()
                    }
            }
        }.padding()


    }
}

#Preview {
    AnimationsFullCatalog()
}
