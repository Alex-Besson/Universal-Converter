//
//  CategoryModel.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-25.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import Foundation
import UIKit

// MODEL TO PASS CATEGORY INFORMATION FROM CATEGORIES VC TO CONVERTER VC

struct CategoryModel {
    var name: String
    var categories: [String]
    var categorySelected: CategorySwitch
    var color: UIColor
    var icon: UIImage
    
    init(name: String, categories: [String], categorySelected: CategorySwitch, color: UIColor, icon: UIImage)  {
        self.name = name
        self.categories = categories
        self.categorySelected = categorySelected
        self.color = color
        self.icon = icon
    }
}