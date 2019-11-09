//
//  AppView.swift
//  UnderseaCreature
//
//  Created by User15 on 2019/10/25.
//  Copyright © 2019 00457158. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            SearchCreatureView().tabItem {
                Image(systemName: "music.house.fill")
                Text("搜尋生物")
            }
            MarineBiologyView().tabItem {
                Image(systemName: "info.circle.fill")
                Text("海底生物")
            }
           MarineHistoryView().tabItem {
               Image(systemName: "video.fill")
               Text("歷史")
           }
        }.accentColor(.green)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
