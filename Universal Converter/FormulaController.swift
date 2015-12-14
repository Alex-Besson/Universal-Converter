//
//  FormulaController.swift
//  UnitConverterX
//
//  Created by Miwand Najafe on 2015-11-22.
//  Copyright © 2015 Miwand Najafe. All rights reserved.
//

import UIKit

class FormulaController {
    
    let myFormulas:NSDictionary = ["Pressure":FormulaModel.pressureConstants,"Force":FormulaModel.forceConstants,"Fensity":FormulaModel.densityConstants,"Voltage":FormulaModel.voltageConstants,"Work":FormulaModel.workConstants,"Power":FormulaModel.powerConstants,"Torque":FormulaModel.torqueConstants,"Flow":FormulaModel.flowConstants,"Viscosity":FormulaModel.viscosityConstants,"Current":FormulaModel.currConstants,"Astronomy":FormulaModel.astroConstants,"Length":FormulaModel.lengthConstants,"Area":FormulaModel.areaConstants,"Weight":FormulaModel.weightConstants,"Volume":FormulaModel.volumeConstants,"Temperature":FormulaModel.temperatureConstants,"Time":FormulaModel.timeConstants,"Speed":FormulaModel.speedConstants]
    
    func findValue(myValue:String,formulaType:String,currentValueType:String) -> [(String,String)]{
        
      
        var currentConstant: Double!
        var convertConstant: Double!
        var calcValues = [(String,String)]()
 
        
        let formlType = myFormulas[formulaType]
       let convertValType = formlType?.allKeys as! [String]
        
        for convType in convertValType {
        currentConstant = formlType?[currentValueType] as? Double ?? 0
        convertConstant = formlType?[convType] as? Double ?? 0
           let val = NSNumberFormatter().numberFromString(myValue)?.doubleValue
            
            if formulaType == "Temperature" {
                
           let valConv = String((self.calcTempConvert(val!, currentType: currentValueType, convertType: convType).roundTo5))
             calcValues.append(convType,valConv)
                
            } else {
            let valConv = String((val! * (convertConstant / currentConstant)).roundTo5)
                calcValues.append(convType,valConv)
            }
          
            
  
            
        }
        return calcValues
        
        
        
    }
    
    func calcTempConvert(val: Double,currentType:String,convertType:String) -> Double{
        let valueType:(String,String) = (currentType,convertType)
        
        let currentConstant = myFormulas["Temperature"]?[currentType] as? Double ?? 0
        let convertConstant = myFormulas["Temperature"]?[convertType] as? Double ?? 0
      
        switch valueType {
        case ("K","C"),("C","K"):
         return (val + convertConstant - currentConstant)
        case ("F","K"):
        return (val - 32) * 5/9 + 273.15
        case ("K","F"):
           return (val - 273.15) * 9/5 + 32
        case ("C","F"):
            return val * 9/5 + 32
        case ("F","C"):
           return (val - 32) * 5/9
        default:
            return val
        }
    }

    
 
    
}
