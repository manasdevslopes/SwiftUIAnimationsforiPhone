//
//  ArcView.swift
//  SwiftUI-Animations (iOS)
//
//  Created by MANAS VIJAYWARGIYA on 24/04/21.
//

import SwiftUI

struct ArcView: View {
    var radius: CGFloat
    @Binding var fillColor: Color
    @Binding var shadowColor: Color
    
    var body: some View {
        ArcShape(radius: radius)
            .fill(fillColor)
            .shadow(color: shadowColor, radius: 5)
            .frame(height: radius)
            .animation(Animation.spring().speed(0.75))
            .onTapGesture {
                self.fillColor = Color.wifiConnected
            }
    }
}

struct ArcView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            ArcView(radius: 42, fillColor: .constant(Color.wifiConnected), shadowColor: .constant(Color.red))
        }
    }
}
