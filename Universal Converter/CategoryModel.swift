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
    var categorySelected: CategorySwitch
    var color: UIColor
    var icon: UIImage
    var conversionTypes: [AnyObject]
}