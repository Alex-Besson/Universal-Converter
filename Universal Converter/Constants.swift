//
//  Constants.swift
//  Universal Converter
//
//  Created by Alexander Besson on 2015-11-22.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import Foundation
import UIKit

// ENUM FOR CATEGORY OF CONVERSION

enum CategorySwitch: Int {
    case Weight = 1
    case Temperature = 2
    case Time = 3
    case Currency = 4
    case Speed = 5
    case Area = 6
    case Volume = 7
    case Length = 8
    case Data = 9
    case Fuel = 10
    case Pressure = 11
    case Force = 12
    case Power = 13
}

// CATEGORY MODEL ITEMS

let weight = CategoryModel(name: "Weight", categories: weightCategories, categorySelected: .Weight, color: weightColor, icon: weightIcon!)
let temperature = CategoryModel(name: "Temperature", categories: [], categorySelected: .Temperature, color: temperatureColor, icon: UIImage(named: "Temperature")!)
let time = CategoryModel(name: "Time", categories: [], categorySelected: .Time, color: timeColor, icon: UIImage(named: "Time")!)
let currency = CategoryModel(name: "Currency", categories: [], categorySelected: .Currency, color: currencyColor, icon: UIImage(named: "Currency")!)
let speed = CategoryModel(name: "Speed", categories: [], categorySelected: .Speed, color: speedColor, icon: UIImage(named: "Speed")!)
let area = CategoryModel(name: "Area", categories: [], categorySelected: .Area, color: areaColor, icon: UIImage(named: "Area")!)
let volume = CategoryModel(name: "Volume", categories: [], categorySelected: .Volume, color: volumeColor, icon: UIImage(named: "Volume")!)
let length = CategoryModel(name: "Length/Distance", categories: [], categorySelected: .Length, color: lengthColor, icon: UIImage(named: "Length")!)
let data = CategoryModel(name: "Data", categories: [], categorySelected: .Data, color: dataColor, icon: UIImage(named: "Data")!)
let fuel = CategoryModel(name: "Fuel", categories: [], categorySelected: .Fuel, color: fuelColor, icon: UIImage(named: "Fuel")!)
let pressure = CategoryModel(name: "Pressure", categories: [], categorySelected: .Pressure, color: pressureColor, icon: UIImage(named: "Pressure")!)
let force = CategoryModel(name: "Force", categories: [], categorySelected: .Force, color: forceColor, icon: UIImage(named: "Force")!)
let power = CategoryModel(name: "Power", categories: [], categorySelected: .Power, color: powerColor, icon: UIImage(named: "Power")!)

// CATEGORY COLORS

let weightColor = UIColor(red: 124/255, green: 27/255, blue: 166/255, alpha: 1)
let temperatureColor = UIColor(red: 2/255, green: 242/255, blue: 219/255, alpha: 1)
let timeColor = UIColor(red: 1/255, green: 22/255, blue: 64/255, alpha: 1)
let currencyColor = UIColor(red: 242/255, green: 231/255, blue: 68/255, alpha: 1)
let speedColor = UIColor(red: 242/255, green: 184/255, blue: 75/255, alpha: 1)
let areaColor = UIColor(red: 145/255, green: 39/255, blue: 72/255, alpha: 1)
let volumeColor = UIColor(red: 0/255, green: 163/255, blue: 168/255, alpha: 1)
let lengthColor = UIColor(red: 32/255, green: 65/255, blue: 84/255, alpha: 1)
let dataColor = UIColor(red: 78/255, green: 158/255, blue: 24/255, alpha: 1)
let fuelColor = UIColor(red: 215/255, green: 172/255, blue: 131/255, alpha: 1)
let pressureColor = UIColor(red: 140/255, green: 10/255, blue: 39/255, alpha: 1)
let forceColor = UIColor(red: 244/255, green: 123/255, blue: 128/255, alpha: 1)
let powerColor = UIColor(red: 200/255, green: 249/255, blue: 148/255, alpha: 1)

// CATEGORY ICONS



// WEIGHT CATEGORIES

let weightCategories = ["kilograms", "grams", "milligrams", "pounds", "ounces", "tons (metric)", "tons long (UK)", "tons short (US)", "stones"]
let weightIcon = UIImage(named: "Weight")

