//
//  HeaderModel.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 20/03/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import SwiftUI

struct Header:Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
