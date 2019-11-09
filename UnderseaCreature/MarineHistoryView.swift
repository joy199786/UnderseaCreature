//
//  MarineHistoryView.swift
//  UnderseaCreature
//
//  Created by User15 on 2019/10/25.
//  Copyright © 2019 00457158. All rights reserved.
//

import SwiftUI

struct MarineHistoryView: View {
    @State private var scale: CGFloat = 1
   @State private var historyYear = Date()
    let today = Date()
     let startDate =
    Calendar.current.date(byAdding: .year, value: -2,
    to: Date())!
     var year: Int {
     Calendar.current.component(.year, from: historyYear)
     }
    //selectDate: 選擇的⽇期 today: 今天⽇期
  //  startDate: 開始⽇期 year: 選擇⽇期的年份
     let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter
     }()
     var body: some View {
        
        
        VStack {
         //   Spacer()
            
            GeometryReader { geometry in
                 VStack {
                 Text("history\(self.year)")
                    .font(.largeTitle)
                 Image("history\(self.year)")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 380, height: 400)
                 .clipped()
                .scaleEffect(self.scale)
                
                    Slider(value: self.$scale, in: 0.5...1.5)
                .accentColor(.orange)
                    //Form{
                     VStack {
                        DatePicker("事件", selection: self.$historyYear, displayedComponents: .date)
                    
                     }
                    //}
                }
                
            }
            Group{
            if self.year == 1857{
                Text("加利福尼亞海岸偵察圖由詹姆斯·奧爾登船長於1852年繪製。1857年，詹姆斯·奧爾登發現了加利福尼亞州的蒙特利峽谷，這是第一個已知的海底山谷。 海底山谷是海床中的一個長而深的凹陷。")
            }
            if self.year == 1868{
                Text("H.M.S. 閃電通過使用此處說明的挖泥設備在4,389米（14,400英尺）處發現了海洋生物。 在發現之前，人們認為海洋深處不可能存在生命。")
            }
            if self.year == 1875{
                Text("博物學家路易斯·阿加西茲（Louis Agassiz）在1872年收集了大約30,000個海洋標本。該板塊描繪了佛羅里達的各種珊瑚，記錄了他的研究。")
                
            }
            if self.year == 1914{
                Text("雷金納德·費森登（Reginald Fessenden）進行了首次海洋聲學探測。 費森登使用電振盪器，從海底以及冰山接收回波。 該振盪器被設計為水下信號，通信和障礙物避免裝置。")
            }
            }.foregroundColor(Color.blue)
            
            Group{
            if self.year == 1925{
                Text("德國流星探險隊證實了中大西洋海脊的連續性。這張地圖是根據該探險隊創建的，通過結合深度和溫度讀數來推斷測深圖，通過溫度等高線顯示了海脊的連續性。")
            }
            if self.year == 1955{
                Text("1955年通過拖曳磁力計發現了海底磁條。 圖示的磁力儀被認為與1955年的調查中使用的儀器相同。")
            }
            if self.year == 1960{
                Text("深水浴的里雅斯特被懸掛在水中。 1960年，這輛車降落到挑戰者深處，位於海平面以下10,916米（35813英尺）。 直到2012年DEEPSEA CHALLENGE探險隊為止，的里雅斯特仍然是唯一成功達到這種深度的戰車。")
            }
            if self.year == 1985{
                Text("沉沒的R.M.S.的位置 泰坦尼克號是由羅伯特·巴拉德（Robert Ballard）於1985年發現的。")
            }
            if self.year == 2012{
                Text("詹姆斯·卡梅隆（James Cameron）將駕駛他的潛水器DEEPSEA CHALLENGER到達海洋最深處的底部。")
            }
            }.foregroundColor(Color.blue)
           /*
                Stepper(value: $yearAmount, in: 1800...2020, step: 50){
                    Text("\(yearAmount) year")
                }
            */
            Spacer()
        }
        
    }
}

struct MarineHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        MarineHistoryView()
        
    }
}
