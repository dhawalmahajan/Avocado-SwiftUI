//
//  SettingsView.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 02/02/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    //MARK:- Properties
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    
    var body: some View {
        VStack (alignment: .center, spacing: 0) {
            VStack {
                Image(BGImage.kAvocadoImage)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color(ColorCodes.kColorBlackTransparentLight), radius: 8, x: 0, y: 4)
                
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color(ColorCodes.kColorGreenAdaptive))
            }
            .padding()
            
            Form {
                //MARK:- Section #1
                Section(header: Text("General Setting")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                }
                
                //MARK:- Section #1
                Section(header: Text("Appliucation")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Dhawal Mahajan")
                        }
                        
                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Dhawal Mahajan")
                        }
                        
                        HStack {
                            Text("Website").foregroundColor(.gray)
                            Spacer()
                            Text("swiftui.com")
                        }
                        
                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding")
                        }
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
