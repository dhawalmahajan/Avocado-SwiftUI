//
//  DishesVIew.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 20/03/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import SwiftUI

struct DishesVIew: View {
    var body: some View {
        HStack {
            HStack {
                    Image(systemName: "heart.circle")
            }
            Image(systemName: "heart.circle")
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
    .frame(maxHeight: 220)

    
    }
}

struct DishesVIew_Previews: PreviewProvider {
    static var previews: some View {
        DishesVIew()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
