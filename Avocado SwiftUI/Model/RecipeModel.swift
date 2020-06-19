//
//  RecipeModel.swift
//  Avocado SwiftUI
//
//  Created by Dhawal Mahajan on 14/06/20.
//  Copyright © 2020 Dhawal Mahajan. All rights reserved.
//

import Foundation

//MARK: - Recipe Model
struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
