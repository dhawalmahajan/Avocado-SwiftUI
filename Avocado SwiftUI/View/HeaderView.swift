//
//  HeaderView.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 02/02/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    //MARK: Properties
    var header: Header
    @State private var showHeadeLine: Bool = false
    private var slideinAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
        .speed(1)
            .delay(0.15)
    }
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color(ColorCodes.kColorGreenLight))
                    .frame(width: 4)
                VStack(alignment: .leading, spacing: 0) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color(ColorCodes.kColorBlackTransparentLight))
            }
        .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y:showHeadeLine ? 75 : 220)
        .animation(slideinAnimation)
            .onAppear {
                self.showHeadeLine.toggle()
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headerData[0])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
