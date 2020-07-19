//
//  RipeningModel.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 15/07/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String

}
