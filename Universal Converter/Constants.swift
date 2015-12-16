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

enum CategorySwitch {
    case Weight
    case Temperature
    case Time
    case Currency
    case Speed
    case Area
    case Volume
    case Length
    case Data
    case Fuel
    case Pressure
    case Force
    case Power
    case Density
    case Viscosity
    case Torque
    case Astronomy
    case Angle
    case Custom
}

// CATEGORY MODEL ITEMS FOR MAIN DATA ARRAY

let weight = CategoryModel(name: "Weight", categories: weightCategories, categorySelected: .Weight, color: weightColor, icon: weightIcon!)
let temperature = CategoryModel(name: "Temperature", categories: tempCategories, categorySelected: .Temperature, color: temperatureColor, icon: UIImage(named: "Temperature")!)
let time = CategoryModel(name: "Time", categories: timeCategories, categorySelected: .Time, color: timeColor, icon: UIImage(named: "Time")!)
let currency = CategoryModel(name: "Currency", categories: currencyCategories, categorySelected: .Currency, color: currencyColor, icon: UIImage(named: "Currency")!)
let speed = CategoryModel(name: "Speed", categories: speedCategories, categorySelected: .Speed, color: speedColor, icon: UIImage(named: "Speed")!)
let area = CategoryModel(name: "Area", categories: areaCategories, categorySelected: .Area, color: areaColor, icon: UIImage(named: "Area")!)
let volume = CategoryModel(name: "Volume", categories: volumeCategories, categorySelected: .Volume, color: volumeColor, icon: UIImage(named: "Volume")!)
let length = CategoryModel(name: "Length/Distance", categories: lengthCategories, categorySelected: .Length, color: lengthColor, icon: UIImage(named: "Length")!)
let data = CategoryModel(name: "Data", categories: [], categorySelected: .Data, color: dataColor, icon: UIImage(named: "Data")!)
let fuel = CategoryModel(name: "Fuel", categories: [], categorySelected: .Fuel, color: fuelColor, icon: UIImage(named: "Fuel")!)
let pressure = CategoryModel(name: "Pressure", categories: pressureCategories, categorySelected: .Pressure, color: pressureColor, icon: UIImage(named: "Pressure")!)
let force = CategoryModel(name: "Force", categories: forceCategories, categorySelected: .Force, color: forceColor, icon: UIImage(named: "Force")!)
let power = CategoryModel(name: "Power", categories: powerCategories, categorySelected: .Power, color: powerColor, icon: UIImage(named: "Power")!)
let density = CategoryModel(name: "Density", categories: densityCategories, categorySelected: .Density, color: densityColor, icon: UIImage(named: "Weight")!)
let viscosity = CategoryModel(name: "Viscosity", categories: viscosityCategories, categorySelected: .Viscosity, color: viscosityColor, icon: UIImage(named: "Weight")!)
let torque = CategoryModel(name: "Torque", categories: torqueCategories, categorySelected: .Torque, color: torqueColor, icon: UIImage(named: "Weight")!)
let astronomy = CategoryModel(name: "Astronomy", categories: astronomyCategories, categorySelected: .Astronomy, color: astronomyColor, icon: UIImage(named: "Weight")!)
let angle = CategoryModel(name: "Angle", categories: angleCategories, categorySelected: .Angle, color: angleColor, icon: UIImage(named: "Weight")!)

// CATEGORY COLORS

let weightColor = UIColor(red: 124/255, green: 27/255, blue: 166/255, alpha: 1)
let temperatureColor = UIColor(red: 2/255, green: 242/255, blue: 219/255, alpha: 1)
let timeColor = UIColor(red: 51/255, green: 72/255, blue: 114/255, alpha: 1)
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
let densityColor = UIColor(red: 148/255, green: 175/255, blue: 194/255, alpha: 1)
let viscosityColor = UIColor(red: 232/255, green: 134/255, blue: 194/255, alpha: 1)
let torqueColor = UIColor(red: 16/255, green: 117/255, blue: 49/255, alpha: 1)
let astronomyColor = UIColor(red: 134/255, green: 235/255, blue: 149/255, alpha: 1)
let angleColor = UIColor(red: 255/255, green: 240/255, blue: 13/255, alpha: 1)

// CATEGORY ICONS

let weightIcon = UIImage(named: "Weight")

// SPECIFIC FORMULA CATEGORIES FOR THE MAIN CATEGORIES

let weightCategories = (FormulaModel.weightConstants.allKeys as! [String]).sort(<)
let tempCategories = (FormulaModel.temperatureConstants.allKeys as! [String]).sort(<)
let pressureCategories = (FormulaModel.pressureConstants.allKeys as! [String]).sort(<)
let timeCategories = (FormulaModel.timeConstants.allKeys as! [String]).sort(<)
let speedCategories = (FormulaModel.speedConstants.allKeys as! [String]).sort(<)
let areaCategories = (FormulaModel.areaConstants.allKeys as! [String]).sort(<)
let volumeCategories = (FormulaModel.volumeConstants.allKeys as! [String]).sort(<)
let lengthCategories = (FormulaModel.lengthConstants.allKeys as! [String]).sort(<)
let forceCategories = (FormulaModel.forceConstants.allKeys as! [String]).sort(<)
let powerCategories = (FormulaModel.powerConstants.allKeys as! [String]).sort(<)
let densityCategories = (FormulaModel.densityConstants.allKeys as! [String]).sort(<)
let viscosityCategories = (FormulaModel.viscosityConstants.allKeys as! [String]).sort(<)
let torqueCategories = (FormulaModel.torqueConstants.allKeys as! [String]).sort(<)
let astronomyCategories = (FormulaModel.astroConstants.allKeys as! [String]).sort(<)
let angleCategories = (FormulaModel.angleConstants.allKeys as! [String]).sort(<)
let currencyCategories = (FormulaModel.currencyConstants.allKeys as! [String]).sort(<)


