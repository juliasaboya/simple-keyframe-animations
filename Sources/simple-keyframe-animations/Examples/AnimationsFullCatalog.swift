//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 16/06/24.
//

import SwiftUI

struct ExampleImage: View {
    let name: String
    var body: some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
    }
}

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
                ExampleImage(name: "swift")
                    .blooming(duration: 1, startAnimation: $startAnimation1)
                Text("QuickShake Animation")
                    .multilineTextAlignment(.center)
                ExampleImage(name: "bell.fill")
                    .quickShake(duration: 1, startAnimation: $startAnimation3)
                    .onTapGesture {
                        startAnimation3.toggle()
                    }
                Text("Horizontal Stretch")
                    .multilineTextAlignment(.center)
                ExampleImage(name: "arrowshape.right.fill")
                    .horizontalStretch(duration: 1, startAnimation: $startAnimation5)
                    .onTapGesture {
                        startAnimation5.toggle()
                    }
            }
            Spacer()
            VStack(spacing: 32) {
                Text("Pulse Animation")
                ExampleImage(name: "heart")
                    .pulseAnimation(duration: 1, startAnimation: $startAnimation2)
                    .onTapGesture {
                        startAnimation2.toggle()
                    }
                Text("Vertical Shake Animation")
                    .multilineTextAlignment(.center)
                ExampleImage(name: "lock.rotation")
                    .verticalShake(duration: 3, startAnimation: $startAnimation4)
                    .onTapGesture {
                        startAnimation4.toggle()
                    }
                Text("Vertical Stretch")
                    .multilineTextAlignment(.center)
                ExampleImage(name: "globe.americas.fill")
                    .verticalStretch(duration: 0.5, startAnimation: $startAnimation6)
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
