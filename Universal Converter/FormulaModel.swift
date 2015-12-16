//
//  FormulaModel.swift
//  UnitConverterX
//
//  Created by Miwand Najafe on 2015-11-22.
//  Copyright © 2015 Miwand Najafe. All rights reserved.
//

import Foundation

// CONSTANT VALUES FOR DIFFERENT CATEGORIES

struct FormulaModel {
    
    static let pressureConstants: NSDictionary = ["atm":1,"Pa":101325,"hPa":1013.25,"kPa":101.325,"MPa":0.101325,"bar":1.01325,"kgf/cm2":1.033227,"kgf/m2":10332.274528,"psi":14.695949,"ksi":0.014696,"mmHg":760.0021,"cmHg":76.00021,"inchHg":29.921261,"mmH2O":10332.274528,"cmH2O":1033.227453,"inchH2O":406.782462,"ft/H2O":33.898538,"kN/m2":101.325,"kN/mm2":0.000101,"kips/in2":0.014696,"megaN/m2":0.101325,"mH2O":10.332275,"mmbars":1013.25,"N/cm2":10.1325,"N/m2":101325,"N/mm2":0.101325,"lbs/ft2":2116.22807,"poundals/ft2":69968.097448,"tons(UK)force/ft2":0.944746,"tons(UK)force/in2":0.006561,"tons(US)force/ft2":1.058114,"tons(US)force/in2":0.007348]
    
    static let forceConstants: NSDictionary = ["N":1,"dyn":100000,"daN":0.1,"kN":0.001,"gf":101.971621,"kgf":0.101972,"lbf":0.224809,"kip":0.000225,"MN":0.000001,"pdl":7.233011,"sn":0.001,"tonforce":0.000102]
    
    static let densityConstants: NSDictionary = ["g/cm3":1,"kg/m3":1000,"lb/ft3":62.427961,"lb/gal(UK)":10.022413,"lb/gal(US)":8.345404,"gr/gal(UK)":70156,"gr/gal(US)":58418,"g/l":1000,"g/ml":1,"kg/l":1,"Mg/m3":1,"mg/ml":1000,"mg/l":1000000,"oz/in3":0.578037,"oz/gal(UK)":160.358613,"oz/gal(US)":133.526466,"lb/in3":0.036127,"slugs/cub":1.94055,"tonnes/cubm":1,"tons(UK)/cubyard":0.75248,"tons(US)/cubyard":0.842777]
    
    static let voltageConstants: NSDictionary = ["mV":1000000,"V":1000,"kV":1,"MV":0.001,"EMU(abV)":1.0000e+11,"ESU(stv)":3.335641]
    
    static let workConstants: NSDictionary = ["J":1,"kJ":0.001,"cal":0.239006,"kcal(Cal)":0.000239,"kWh":2.7778e-7,"kgfm":0.101972,"inlbf":8.850746,"ftlbg":0.737562,"BTU":0.000948]
    
    static let powerConstants: NSDictionary = ["W":1,"kW":0.001,"MW":0.000001,"kcal/s":0.000239,"kcal/h":0.860421,"HP":0.001341,"ps":0.00136,"BTU/h":3.412141,"BTU/min":0.056869,"BTU/sec":0.000948,"TR":0.000285,"dBm":30,"cal/hr":860.42065,"cal/min":14.340344,"cal/sec":0.239006,"footlbsforce/min":44.253662,"footlbsforce/sec":0.737561,"joules/hr":3600,"joules/min":60,"joules/sec":1,"kCal/hr":0.860421,"kCal/min":0.01434,"kgfm/hr":367.107195,"kfgm/min":6.118304,"GigaW":0.000000001,"TeraW":0.000000000001,"PW":0.000000000000001]
    
    static let torqueConstants: NSDictionary = ["Nm":1000,"daNm":100,"kNm":1,"kgfm":101.971621,"ozfin":141611.933,"lbfin":8850.74579,"lbfft":737.562149]
    
    static let flowConstants: NSDictionary = ["l/sec":0.016667,"m3/sec":0.000017,"ft3/sec":0.000589,"l/min":1,"m3/min":0.001,"ft3/min":0.035315,"m3/hr":0.06,"ft3/hr":2.11888,"gal(UK)/min":0.219969,"gal(US)/min":0.264172]
    
    static let viscosityConstants: NSDictionary = ["cP":100,"P(g/cms)":1,"dyns/cm2":1,"kg/ms":0.1,"Pas(Ns/m2)":0.1,"mPas":100,"lb/fts":0.067197]
    
    static let currConstants: NSDictionary = ["mA":1000,"A":1,"kA":0.001,"EMU(abA)":0.1,"ESU(stA)":2.997924537e+9]
    
    static let astroConstants: NSDictionary = ["km":1,"mile":0.621371,"lightyear":1.057e-13,"au":6.6846e-9,"parsec":3.2408e-14]
    
    static let lengthConstants: NSDictionary = ["cm":1,"dm":0.1,"m":0.01,"km":0.00001,"inch":0.393701,"ft":0.032808,"yd":0.010936,"mile":0.000006,"NM":0.000005]
    
    static let areaConstants: NSDictionary = ["mm2":1000000,"cm2":10000,"m2":1,"ha":0.0001,"km2":0.000001,"in2":1550.0031,"ft2":10.76391,"ft2":10.76391,"yd2":1.19599,"acre":0.000247]
    
    static let weightConstants: NSDictionary = ["Gram":1000,"Kilogram":1,"Pound":2.2046244202,"Ounce":35.273990723,"Milligram":1000000,"Long Ton":0.0009842073,"Short Ton":0.0011023122,"Carrat":5000,"Metric Ton":0.001]
    
    static let volumeConstants: NSDictionary = ["ml":1000,"dL":10,"L":1,"cm3":1000,"m3":0.001,"in3":61.023744,"ft3":0.035315,"yd3":0.001308,"bbl":0.00629,"gal(UK)":0.219969,"gal(US)":0.264172,"qt (US)": 1.056688,"fl oz (US)": 33.814023]
    
    static let temperatureConstants: NSDictionary = ["C":30,"F":86,"K":303.15]
    
    static let timeConstants: NSDictionary = ["ms":3600000,"sec":3600,"min":60,"hour":1,"day":0.041667,"week":0.005952,"month":0.00137,"year":0.000114]
    
    static let speedConstants: NSDictionary = ["m/min":16.666667,"ft/min":54.680665,"km/min":0.016667,"km/h":1,"mi/h":0.621371,"knot":0.539957,"mach":0.000817,"min/km":60,"min/mile":96.56064]
    
    static let angleConstants: NSDictionary = ["rad":0.523599,"deg":30,"min":1800,"sec":108000,"grad":33.333333,"%":57.735027,"circle":0.083333,"6400 mil":533.333333,"6000 mil":500]
    
    static let currencyConstants: NSDictionary = ["JMD": 120.035004, "SILVER 1 OZ 999 NY": 0.07278, "CAD": 1.37345, "BRL": 3.9152, "XPF": 109.173149, "SLL": 4229.214844, "MYR": 4.30995, "EUR": 0.914704, "SOS": 633.150024, "NAD": 14.93, "COPPER HIGHGRADE": 0.487567, "TRY": 2.96495, "DZD": 106.775002, "IEP": 0.699154, "KMF": 450.087158, "UYU": 29.780001, "TWD": 32.730999, "TMT": 3.5, "GTQ": 7.6085, "GIP": 0.6594, "MVR": 15.39, "ZMW": 10.93, "AED": 3.67295, "KGS": 75.8657, "NZD": 1.476811, "BYR": 18285.0, "MZN": 51.27, "BND": 1.4063, "RWF": 747.299988, "PALLADIUM 1 OZ": 0.001767, "THB": 35.9515, "UAH": 23.784, "COP": 3318.100098, "PLN": 3.95245, "ISK": 129.440002, "XCD": 2.7, "ARS": 9.78565, "LKR": 144.729996, "MMK": 1297.199951, "QAR": 3.64265, "ZAR": 14.94565, "ZWL": 322.355011, "MXV": 2.81, "TJS": 6.8327, "LSL": 14.93, "LAK": 8082.350098, "KRW": 1174.89502, "CZK": 24.720501, "DEM": 1.71745, "AUD": 1.389671, "ITL": 1700.272217, "XDR": 0.72005, "TND": 2.02615, "SDG": 6.2621, "PYG": 5803.319824, "TOP": 2.204694, "FRF": 5.7601, "PLATINUM 1 UZ 999": 0.001169, "NIO": 27.868601, "CLF": 0.0246, "MOP": 7.9833, "BGN": 1.7908, "TTD": 6.417, "KPW": 900.0, "STD": 22420.5, "ALL": 126.379501, "VUV": 112.824997, "GBP": 0.664982, "BWP": 11.09045, "PHP": 47.3755, "CDF": 928.0, "JPY": 121.614998, "RON": 4.11085, "CLP": 710.695007, "SZL": 14.93, "BDT": 78.744949, "ERN": 16.780001, "LVL": 0.62055, "CYP": 0.51955, "SCR": 13.10995, "PGK": 2.98655, "IRR": 30107.0, "MDL": 19.700001, "SGD": 1.40615, "BZD": 2.0, "UGX": 3405.0, "MKD": 55.810001, "SYP": 220.718002, "TZS": 2176.399902, "GMD": 39.200001, "MRO": 301.0, "SHP": 0.6594, "AMD": 484.220001, "CRC": 531.25, "DOP": 45.34, "FJD": 2.13355, "BSD": 1.0075, "PKR": 104.75, "SRD": 4.0, "VND": 22538.5, "SEK": 8.5057, "LBP": 1508.099976, "YER": 215.149994, "ETB": 21.139, "DKK": 6.82545, "MNT": 1994.5, "ILS": 3.87475, "HKD": 7.75055, "CNY": 6.5023, "HUF": 288.915009, "IQD": 1107.099976, "NGN": 198.869995, "NOK": 8.6799, "USD": 1.0, "XOF": 600.116211, "INR": 66.908447, "AFN": 67.459999, "MUR": 36.150002, "SBD": 8.078072, "RSD": 112.114998, "ANG": 1.79, "CNH": 6.5375, "KZT": 334.254944, "UZS": 2780.050049, "SVC": 8.7275, "JOD": 0.709, "AWG": 1.79, "HNL": 22.274401, "KHR": 4078.449951, "LYD": 1.3957, "KES": 102.2995, "CVE": 100.940002, "LRD": 84.660004, "DJF": 177.695007, "ECS": 25000.0, "SAR": 3.75245, "PEN": 3.3688, "RUB": 70.492996, "MXN": 17.11725, "GOLD 1 OZ": 0.000945, "WST": 2.596784, "BIF": 1560.76001, "MGA": 3200.399902, "FKP": 0.6632, "AZN": 1.04625, "KYD": 0.82, "BMD": 0.99995, "VEF": 6.35, "GEL": 2.388, "LTL": 3.0487, "GNF": 7810.600098, "MWK": 631.534973, "BOB": 6.91, "SIT": 216.486755, "BAM": 1.78935, "BTN": 66.955002, "IDR": 14040.0, "KWD": 0.3033, "AOA": 135.304993, "HTG": 56.645199, "BHD": 0.37734, "XAF": 600.116211, "GHS": 3.73595, "NPR": 107.127998, "HRK": 6.9861, "EGP": 7.88595, "OMR": 0.38505, "GYD": 207.210007, "CHF": 0.9911, "MAD": 9.87635, "PAB": 1.007485, "BBD": 2.0, "CUP": 1.0]
    

    
    
}