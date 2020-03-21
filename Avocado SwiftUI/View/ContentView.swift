//
//  ContentView.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 02/02/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    var headers: [Header] = headerData  
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //MARK: Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                //MARK: Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avacados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color(ColorCodes.kColorGreenAdaptive))
                    .padding(8)
                    
                    Text("Everything you wanted to know about avacados but were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    .padding(0)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
