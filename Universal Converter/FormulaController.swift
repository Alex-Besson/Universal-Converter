//
//  FormulaController.swift
//  UnitConverterX
//
//  Created by Miwand Najafe on 2015-11-22.
//  Copyright © 2015 Miwand Najafe. All rights reserved.
//

import UIKit

class FormulaController {
    
    var currencyDict: Dictionary<String,Double> = [:]
    var currentTime: NSDate?
    var updateTime: NSDate?
    // DICTIONARY FOR FORMULA CONSTANTS TAKEN FROM FORMULA MODEL
    
    let myFormulas:NSDictionary = ["Pressure":FormulaModel.pressureConstants,"Force":FormulaModel.forceConstants,"Fensity":FormulaModel.densityConstants,"Voltage":FormulaModel.voltageConstants,"Work":FormulaModel.workConstants,"Power":FormulaModel.powerConstants,"Torque":FormulaModel.torqueConstants,"Flow":FormulaModel.flowConstants,"Viscosity":FormulaModel.viscosityConstants,"Current":FormulaModel.currConstants,"Astronomy":FormulaModel.astroConstants,"Length/Distance":FormulaModel.lengthConstants,"Area":FormulaModel.areaConstants,"Weight":FormulaModel.weightConstants,"Volume":FormulaModel.volumeConstants,"Temperature":FormulaModel.temperatureConstants,"Time":FormulaModel.timeConstants,"Speed":FormulaModel.speedConstants,"Currency":FormulaModel.currencyConstants,"Fuel":FormulaModel.fuelConstants,"Data":FormulaModel.dataConstants,"Angle":FormulaModel.angleConstants,"Density":FormulaModel.densityConstants]
    
    
    
    // RETURNS AN ARRAY OF TUPLE VALUES WITH CONVERTED TYPES AND VALUES
    
    func findValue(myValue:String, formulaType:String, currentValueType:String) -> [(String,String)]{
        
        var currentConstant: Double!
        var convertConstant: Double!
        var calcValues = [(String,String)]()
        
        
        let formlType = myFormulas[formulaType]
        let convertValType = formlType?.allKeys as! [String]
        
        for convType in convertValType.sort(<) {
            currentConstant = formlType?[currentValueType] as? Double ?? 0
            convertConstant = formlType?[convType] as? Double ?? 0
            let val = NSNumberFormatter().numberFromString(myValue)?.doubleValue
            
            if formulaType == "Temperature" {
                
                let valConv = String((self.calcTempConvert(val!, currentType: currentValueType, convertType: convType).roundTo5))
                calcValues.append(convType,valConv)
                
            } else if formulaType == "Currency" {
                
                let valConv = self.convCurrency(val!, currentType: currentValueType, convType: convType)
                calcValues.append(convType, valConv)
                
            } else {
                let valConv = String((val! * (convertConstant / currentConstant)).roundTo5)
                calcValues.append(convType,valConv)
            }
        }
        
        return calcValues
    }
    
    // CALCULATE TEMPERATURE CONVERSION
    
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
    
    // CALCULATE CURRENCY CONVERSION
    
    func convCurrency(val:Double,currentType:String,convType:String) -> String{
        
        let currentConstant = currencyDict[currentType] ?? 0
        let convertConstant = currencyDict[convType] ?? 0
        
        let valConv = String((val * convertConstant / currentConstant).roundTo2)
        
        return valConv
    }
    
    
    
    
    // GET CURRENCIES FROM YAHOO (XML DATA)
    
    func getCurrencies() -> Dictionary<String,Double> {
        
        
        currentTime = NSDate()
        
        if let prevTime = NSUserDefaults.standardUserDefaults().objectForKey("updateTime")  {
            updateTime = prevTime as? NSDate
        } else {
            updateTime = currentTime
        }
        
        let diffDate = NSCalendar.currentCalendar().components([NSCalendarUnit.Year,NSCalendarUnit.Month, NSCalendarUnit.Day,NSCalendarUnit.Hour,NSCalendarUnit.Minute, NSCalendarUnit.Second], fromDate: updateTime!, toDate: currentTime!, options: NSCalendarOptions.init(rawValue: 0))
        
        let dateDifference = diffDate.hour * 3600 + diffDate.minute * 60 + diffDate.second
        
        
        if ((diffDate.day > 0) || (dateDifference > 60) || ((diffDate.minute * 60) + diffDate.second <= 0)) && Reachability.isConnectedToNetwork() {
            
            let url = NSURL(string: "http://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote")
            let data = NSData(contentsOfURL: url!)
            do {
                print("new data")
                let xmlDoc = try AEXMLDocument(xmlData: data!)
                
                if let val = xmlDoc.root["resources"]["resource"].all {
                    
                    
                    //Adding currency conversion rate from USD and currencyISO to an array
                    
                    for values in val {
                        
                        let countryISO = values.children[0].stringValue.stringByReplacingOccurrencesOfString("USD/", withString: "")
                        
                        
                        guard let exchangeRate = Double(values.children[1].stringValue) else {
                            return currencyDict
                        }
                        
                        currencyDict[countryISO] = exchangeRate
                        
                    }
                }
                
            } catch {

            }
            updateTime = NSDate()
            NSUserDefaults.standardUserDefaults().setObject(updateTime, forKey: "updateTime")
            NSUserDefaults.standardUserDefaults().setObject(currencyDict, forKey: "currencyDict")
            NSUserDefaults.standardUserDefaults().synchronize()
            
            return currencyDict
        } else {
 print("old data")
            currencyDict = (NSUserDefaults.standardUserDefaults().objectForKey("currencyDict") as? Dictionary<String,Double>)!
            
            return currencyDict
        
        }
    }
    
}
