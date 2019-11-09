//
//  ContentView.swift
//  UnderseaCreature
//
//  Created by User15 on 2019/10/25.
//  Copyright © 2019 00457158. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State private var snackTime = Date()
   let dateFormatter: DateFormatter = {
      let dateFormatter = DateFormatter()
      dateFormatter.dateStyle = .medium
      dateFormatter.timeStyle = .medium
      return dateFormatter
   }()
   var body: some View {
      VStack {
        DatePicker("選擇送宵夜的時間", selection: $snackTime, displayedComponents: .date)
         Text(dateFormatter.string(from: snackTime))
      }
   }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
