//
//  AvocadosView.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 02/02/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: Properties
    @State private var pulsateAnimation: Bool = false
    
    
    var body: some View {
        VStack {
            Spacer()
            Image(BGImage.kAvocadoImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color(ColorCodes.kColorBlackTransparentDark), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5)
                    .repeatForever(autoreverses: true))
            
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color(ColorCodes.kColorBlackTransparentDark), radius: 4, x: 0, y: 4)
                
                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color(ColorCodes.kColorGreenLight))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                .frame(maxWidth: 640, maxHeight: 120)
                
            }
            .padding()
            Spacer()
        }
        .background(
            Image(BGImage.kBgImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                self.pulsateAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
