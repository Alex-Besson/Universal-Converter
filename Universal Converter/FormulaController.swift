//
//  FormulaController.swift
//  UnitConverterX
//
//  Created by Miwand Najafe on 2015-11-22.
//  Copyright © 2015 Miwand Najafe. All rights reserved.
//

import UIKit

class FormulaController {
    
    func findValue(myValue:String,formulaType:String,currentValueType:String) -> [(String,String)]{
        
        let myConst = FormulaModel.self
        var currentConstant: Double!
        var convertConstant: Double!
        var calcValues = [(String,String)]()
        let myFormulas:NSDictionary = ["Pressure":myConst.pressureConstants,"Force":myConst.forceConstants,"Fensity":myConst.densityConstants,"Voltage":myConst.voltageConstants,"Work":myConst.workConstants,"Power":myConst.powerConstants,"Torque":myConst.torqueConstants,"Flow":myConst.flowConstants,"Viscosity":myConst.viscosityConstants,"Current":myConst.currConstants,"Astronomy":myConst.astroConstants,"Length":myConst.lengthConstants,"Area":myConst.areaConstants,"Weight":myConst.weightConstants,"Volume":myConst.volumeConstants,"Temperature":myConst.temperatureConstants,"Time":myConst.timeConstants,"Speed":myConst.speedConstants]
        
        let formlType = myFormulas[formulaType]
       let convertValType = formlType?.allKeys as! [String]
        
        for convType in convertValType {
        currentConstant = formlType?[currentValueType] as? Double ?? 0
        convertConstant = formlType?[convType] as? Double ?? 0
           let val = NSNumberFormatter().numberFromString(myValue)?.doubleValue
            let valConv = String((val! * (convertConstant / currentConstant)).roundTo5)

            calcValues.append(convType,valConv)
            
  
            
        }
        return calcValues
        
        
        
    }
    
 
    
}
