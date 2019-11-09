//
//  SearchCreatureView.swift
//  UnderseaCreature
//
//  Created by User15 on 2019/10/25.
//  Copyright © 2019 00457158. All rights reserved.
//

import SwiftUI

struct SearchCreatureView: View {
    
    @State private var yearAmount = 2000
    @State private var showAlert = false
    @State private var isCreature = false
    @State private var findCreature = false
    @State private var name = ""
    @State private var showSecondPage = false
    @State private var result = 0
    
    var body: some View {
        VStack{
         VStack {
           
            TextField("海底生物", text: $name)
           .padding()
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 5))
            .padding()
              
            ForEach(0..<creatures.count) { (index) in
                if creatures[index].engName == self.name{
                  
                    Button("\(creatures[index].creature)詳細資料"){
                        self.showSecondPage = true
                    }
                    .sheet(isPresented: self.$showSecondPage){
                        DescriptionView(creature: creatures[index])
                    }
                    .padding(10)
                        Button(action: {
                           self.showAlert = true
                        }) {
                           VStack {
                              Text("\(creatures[index].creature)海底位置")
                           }
                        }
                        .alert(isPresented: self.$showAlert) { () -> Alert in
                            let answer = creatures[index.self].deep
                    return Alert(title: Text(answer))
                    }
                }
                //Text(creatures[index].deep)
            //.foregroundColor(Color.green)
            }
            
            
           }
            Form{
           Text("找尋事件")
            Stepper(value: $yearAmount, in: 1800...2020, step: 1){
                    Image("history\(self.yearAmount)")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipped()
                    Text("西元\(self.yearAmount)")
                }
            }
        }
    }
}
            
            
    

    



struct SearchCreatureView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCreatureView()
    }
}

