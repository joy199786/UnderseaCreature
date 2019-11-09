//
//  MarineBiologyView.swift
//  UnderseaCreature
//
//  Created by User15 on 2019/10/25.
//  Copyright © 2019 00457158. All rights reserved.
//

import SwiftUI

struct MarineBiologyView: View {
   // var creatures : OceanDeep
      @State private var showImage = false
    @State private var showAnimation = false
     @State private var rotateDegree: Double = 0
    @State private var selectedIndex = 0
    var body: some View {
        
       VStack {
        Form{
            Text(creatures[selectedIndex].creature)
                .font(.largeTitle)
                .foregroundColor(Color.blue)
            
            VStack {
               if showImage {
                 Image(creatures[selectedIndex].creature)
                  .resizable()
                  .scaledToFill()
                  .frame(width: 380, height: 300)
                  .clipped()
                 .animation(Animation.linear(duration: 1).repeatCount(1, autoreverses: false))
                  //.padding(5)
               } else {
               }
                Toggle("顯示圖片", isOn: $showImage)
            }
            
            Picker(selection: $selectedIndex, label: Text("深度").foregroundColor(Color.blue)) {
              ForEach(0..<creatures.count) { (index) in
                Text(creatures[index].deep)
                .foregroundColor(Color.green)
                    }
            }.pickerStyle(WheelPickerStyle())
        }
        
        }
    }
}

struct MarineBiologyView_Previews: PreviewProvider {
    static var previews: some View {
        MarineBiologyView()
    }
}
