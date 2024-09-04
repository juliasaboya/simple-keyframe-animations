//
//  SwiftUIView.swift
//  
//
//  Created by Júlia Saboya on 04/09/24.
//

import SwiftUI

//
//  SplashScreen.swift
//  Tigrinho
//
//  Created by Júlia Saboya on 30/08/24.
//

import SwiftUI

struct SwipeSequenceExample: View {

    @State var isActive: Bool = false
    @State var animations: [Bool] = Array(repeating: false, count: 6) 
    // [false, false, false, false, false, false]

    var body: some View {

        VStack {
            // ultimo
            Image(systemName: "arrowshape.down.fill")
                .foregroundStyle(.pink)
                .opacity(0.2)
                .swiping(duration: 1, startAnimation: $animations[2], yInitial: -300, yFinal: 0)
                .swiping(duration: 1, startAnimation: $animations[5], yInitial: 0, yFinal: 500)

            // segundo
            Image(systemName: "arrowshape.down.fill")
                .foregroundStyle(.pink)
                .opacity(0.65)
                .swiping(duration: 1, startAnimation: $animations[1], yInitial: -300, yFinal: 0)
                .swiping(duration: 1, startAnimation: $animations[4], yInitial: 0, yFinal: 500)

            // primeiro
            Image(systemName: "arrowshape.down.fill")
                .foregroundStyle(.pink)
                .swiping(duration: 1, startAnimation: $animations[0], yInitial: -300, yFinal: 0)
                .swiping(duration: 1, startAnimation: $animations[3], yInitial: 0, yFinal: 500)
                .onAppear() {
                    Task {
                        for index in [0, 1, 2] {
                            $animations[index].wrappedValue.toggle()
                            try? await Task.sleep(for: .seconds(0.2))
                        }
                        try? await Task.sleep(for: .seconds(0.5))

                        for index in [3, 4, 5] {
                            $animations[index].wrappedValue.toggle()
                            try? await Task.sleep(for: .seconds(0.2))
                        }




                    }
                }
        }
    }
}

#Preview {
    SwipeSequenceExample()
}
