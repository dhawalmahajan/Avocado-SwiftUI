//
//  AppView.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 02/02/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image(TabConstants.kTabBranchIcon)
                    Text("Avocados")
            }
            ContentView()
                .tabItem {
                    Image(TabConstants.kTabBookIcon)
                    Text("Recipees")
            }
            
            RipeningStagesView()
                .tabItem {
                    Image(TabConstants.kTabAvocadoIcon)
                    Text("Ripening")
            }
            
            SettingsView()
                .tabItem {
                    Image(TabConstants.kTabSettingsIcon)
                    Text("Settings")
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
