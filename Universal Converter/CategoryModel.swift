//
//  CategoryModel.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-25.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import Foundation
import UIKit

struct CategoryModel {
    var name: String
    var categories: [String]
    var categorySelected: CategorySwitch
    var color: UIColor
    var icon: UIImage
    var convertFrom: Any
    var convertTo: Any
    
    init(nameString: String, categoryItems: [String], catSelected: CategorySwitch, colorRelated: UIColor, iconImage: UIImage, convertingFrom: WeightToKilos, convertingTo: WeightFromKilos)  {
        name = nameString
        categories = categoryItems
        categorySelected = catSelected
        color = colorRelated
        icon = iconImage
        convertFrom = convertingFrom
        convertTo = convertingTo
    }
}