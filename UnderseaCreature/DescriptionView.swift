//
//  DescriptionView.swift
//  UnderseaCreature
//
//  Created by User15 on 2019/11/9.
//  Copyright © 2019 00457158. All rights reserved.
//

import SwiftUI

struct DescriptionView: View {
    var creature: OceanDeep;
    var body: some View {
        VStack{
        Image(creature.creature)
            .resizable()
            .scaledToFill()
            .frame(width: 400, height: 300)
            .clipped()
        /*
        Image(creature.creature)
                           .resizable()
                           .scaledToFill()
                           .frame(width: 300, height: 300)
                           .clipped()
 */
        Text(creature.description)
        .fontWeight(.semibold)
        .font(.system(size: 24))
        .padding(30)
        //.foregroundColor(.black)
        .foregroundColor(Color.black)
            .background(Color.blue)
        }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(creature: creatures[0])
    }
}
