//
//  CircleEmitter.swift
//  SwiftUI-Animations (iOS)
//
//  Created by MANAS VIJAYWARGIYA on 24/04/21.
//

import SwiftUI

struct CircleEmitter: View {
    @Binding var isAnimating: Bool
    var body: some View {
        ForEach(0 ..< 50) { ix in
            Circle()
                .fill(Color.white.opacity(0.75))
                .frame(width: 6, height: 6)
                .offset(x: CGFloat.random(in: -250 ..< 250), y: CGFloat.random(in: -200 ..< 250))
                .scaleEffect(self.isAnimating ? 1 : 0)
                .animation(self.isAnimating ? Animation.easeInOut(duration: 0.125).delay(0.01 * Double(ix)): .none)
        }
    }
}

struct CircleEmitter_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CircleEmitter(isAnimating: .constant(true))
        }
    }
}
