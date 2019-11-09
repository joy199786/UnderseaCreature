//
//  storyboardView.swift
//  UnderseaCreature
//
//  Created by User15 on 2019/11/9.
//  Copyright © 2019 00457158. All rights reserved.
//

import SwiftUI

struct storyboardView: View {
     @State private var rotateDegree: Double = 0
    @State private var moveDistance: CGFloat = 0
    @State private var opacity: Double = 1
    var body: some View {
        Image("sponge")
        .resizable()
        .frame(width: 500, height: 500)
        .scaledToFill()
        .clipped()
        .rotationEffect(Angle(degrees: rotateDegree))
        .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false))
        .onAppear{
               self.rotateDegree = 360
        }.animation(.default)
    }
}

struct storyboardView_Previews: PreviewProvider {
    static var previews: some View {
        storyboardView()
    }
}
