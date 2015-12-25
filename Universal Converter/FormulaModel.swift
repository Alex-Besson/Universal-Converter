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
    
    static let pressureConstants: NSDictionary = ["atm":1,"Pa":101325,"hPa":1013.25,"kPa":101.325,"MPa":0.101325,"bar":1.01325,"kgf/cm²":1.033227,"kgf/m²":10332.274528,"psi":14.695949,"ksi":0.014696,"mmHg":760.0021,"cmHg":76.00021,"inchHg":29.921261,"mmH₂O":10332.274528,"cmH₂O":1033.227453,"inchH₂O":406.782462,"ft/H₂O":33.898538,"kN/m²":101.325,"kN/mm²":0.000101,"kipf/in²":0.014696,"megaN/m²":0.101325,"mH₂O":10.332275,"millibar":1013.25,"N/cm²":10.1325,"N/m²":101325,"N/mm²":0.101325,"lbf/ft²":2116.22807,"poundal/ft²":69968.097448,"tons(UK)force/ft²":0.944746,"tons(UK)force/in²":0.006561,"tons(US)force/ft²":1.058114,"tons(US)force/in²":0.007348, "Torr":760]
    
    static let forceConstants: NSDictionary = ["N":1,"dyn":100000,"daN":0.1,"kN":0.001,"gf":101.971621,"kgf":0.101972,"lbf":0.224809,"kipf":0.000225,"MN":0.000001,"pdl":7.233011,"sn":0.001,"tonforce":0.000102]
    
    static let densityConstants: NSDictionary = ["g/cm³":1,"kg/m³":1000,"lb/ft³":62.427961,"lb/gal(UK)":10.022413,"lb/gal(US)":8.345404,"gr/gal(UK)":70156,"gr/gal(US)":58418,"g/L":1000,"g/ml":1,"kg/L":1,"Mg/m³":1,"mg/ml":1000,"mg/L":1000000,"oz/in³":0.578037,"oz/gal(UK)":160.358613,"oz/gal(US)":133.526466,"lb/in³":0.036127,"slugs/ft³":1.94055,"tonnes/m³":1,"tons(UK)/yard³":0.75248,"tons(US)/yard³":0.842777]
    
    static let voltageConstants: NSDictionary = ["mV":1000000,"V":1000,"kV":1,"MV":0.001,"EMU(abV)":1.0000e+11,"ESU(stv)":3.335641]
    
    static let workConstants: NSDictionary = ["J":1,"kJ":0.001,"cal":0.239006,"kcal(Cal)":0.000239,"kWh":2.7778e-7,"kgfm":0.101972,"inlbf":8.850746,"ftlbg":0.737562,"BTU":0.000948]
    
    static let powerConstants: NSDictionary = ["W":1,"kW":0.001,"MW":0.000001,"kcal/s":0.000239,"kcal/h":0.860421,"HP":0.001341,"ps":0.00136,"BTU/h":3.412141,"BTU/min":0.056869,"BTU/sec":0.000948,"TR":0.000285,"dBm":30,"cal/hr":860.42065,"cal/min":14.340344,"cal/sec":0.239006,"lbf * ft/min":44.253662,"lbf * ft/sec":0.737561,"joules/hr":3600,"joules/min":60,"joules/sec":1,"kCal/hr":0.860421,"kCal/min":0.01434,"kgfm/hr":367.107195,"kgfm/min":6.118304,"GigaW":0.000000001,"TeraW":0.000000000001,"PW":0.000000000000001]
    
    static let torqueConstants: NSDictionary = ["Nm":1000,"daNm":100,"kNm":1,"kgfm":101.971621,"ozfin":141611.933,"lbfin":8850.74579,"lbfft":737.562149]
    
    static let flowConstants: NSDictionary = ["l/sec":0.016667,"m³/sec":0.000017,"ft³/sec":0.000589,"l/min":1,"m³/min":0.001,"ft³/min":0.035315,"m³/hr":0.06,"ft³/hr":2.11888,"gal(UK)/min":0.219969,"gal(US)/min":0.264172]
    
    static let viscosityConstants: NSDictionary = ["cP":100,"P(g/cms)":1,"dyns/cm²":1,"kg/ms":0.1,"Pas(Ns/m²)":0.1,"mPas":100,"lb/(ft * s)":0.067197]
    
    static let currConstants: NSDictionary = ["mA":1000,"A":1,"kA":0.001,"EMU(abA)":0.1,"ESU(stA)":2.997924537e+9]
    
    static let astroConstants: NSDictionary = ["km":1,"mile":0.621371,"lightyear":1.057e-13,"au":6.6846e-9,"parsec":3.2408e-14]
    
    static let lengthConstants: NSDictionary = ["cm":1,"dm":0.1,"m":0.01,"km":0.00001,"inch":0.393701,"ft":0.032808,"yd":0.010936,"mile":0.000006,"nm":0.000005]
    
    static let areaConstants: NSDictionary = ["mm²":1000000,"cm²":10000,"m²":1,"ha":0.0001,"km²":0.000001,"in²":1550.0031,"ft²":10.76391,"ft²":10.76391,"yd²":1.19599,"acre":0.000247]
    
    static let weightConstants: NSDictionary = ["g":1000,"kg":1,"lb":2.2046244202,"oz":35.273990723,"mg":1000000,"(t) long":0.0009842073,"t (short)":0.0011023122,"car":5000,"t":0.001]
    
    static let volumeConstants: NSDictionary = ["ml":1000,"dL":10,"L":1,"cm³":1000,"m³":0.001,"in³":61.023744,"ft³":0.035315,"yd³":0.001308,"bbl":0.00629,"gal(UK)":0.219969,"gal(US)":0.264172,"qt (US)": 1.056688,"fl oz (US)": 33.814023]
    
    static let temperatureConstants: NSDictionary = ["C":30,"F":86,"K":303.15]
    
    static let timeConstants: NSDictionary = ["ms":3600000,"sec":3600,"min":60,"hour":1,"day":0.041667,"week":0.005952,"month":0.00137,"year":0.000114]
    
    static let speedConstants: NSDictionary = ["m/min":16.666667,"ft/min":54.680665,"km/min":0.016667,"km/h":1,"mi/h":0.621371,"knot":0.539957,"mach":0.000817,"min/km":60,"min/mile":96.56064]
    
    static let angleConstants: NSDictionary = ["rad":0.523599,"deg":30,"min":1800,"sec":108000,"grad":33.333333,"circle":0.083333,"6400 mil":533.333333,"6000 mil":500]
    
    static let dataConstants: NSDictionary = ["Bit":8,"Byte":1,"KiB":0.000977,"MiB":9.5367e-7,"GiB":9.3132e-10,"TiB":9.0949e-13,"PiB":8.8818e-16,"Kbit/s":0.008,"Mbit":0.000008,"Gbit/s":8e-9,"Packet":0.007812,"Block":0.001953]
    
    static let fuelConstants: NSDictionary = ["km/L":1,"mi/L":0.621371,"km/gal (US)":3.785412, "mi/gal (US)": 2.352146, "mi/gal (UK)": 2.824811]
    
    static let currencyConstants: NSDictionary = ["JMD": "Jamaican dollar", "CAD": "Canadian dollar", "BRL": "Brazilian real", "XPF": "French Pacific franc", "SLL": "Sierra Leonean leone", "MYR": "Malaysian ringgit", "EUR": "Euro", "SOS": "Somali shilling", "NAD": "Namibian dollar", "TRY": "Turkish lira", "DZD": "Algerian dinar", "IEP": "Irish Pound", "KMF": "Comoro franc", "UYU": "Urugayan peso", "TWD": "New Taiwan dollar", "TMT": "Turkmenistani new manat", "GTQ": "Guatemalan quetzal", "GIP": "Gibraltar pound", "MVR": "Maldivian rufiyaa", "ZMW": "Zambian kwacha", "AED": "UAE dirham", "KGS": "Kyrgyzstani som", "NZD": "New Zealand dollar", "BYR": "Belarusian ruble", "MZN": "Mozambican metical", "BND": "Brunei dollar", "RWF": "Rwandan franc", "THB": "Thai baht", "UAH": "Ukrainian hryvnia", "COP": "Colombian peso", "PLN": "Polish zloty", "ISK": "Icelandic króna", "XCD": "East Caribbean dollar", "ARS": "Argentine peso", "LKR": "Sri Lankan rupee", "MMK": "Myanma kyat", "QAR": "Qatari riyal", "ZAR": "South African rand", "ZWL": "Zimbabwean dollar", "MXV": "Mexican Unidad De Inversion", "TJS": "Tajikistani somoni", "LSL": "Lesotho loti", "LAK": "Lao kip", "KRW": "South Korean won", "CZK": "Czech koruna", "DEM": "German Deutsche Mark", "AUD": "Australian dollar", "ITL": "Italian lira", "XDR": "IMF Special Drawing Rights", "TND": "Tunisian dinar", "SDG": "Sudanese pound", "PYG": "Paraguayan guaraní", "TOP": "Tongan pa'anga", "FRF": "French franc", "NIO": "Nicaraguan córdoba", "CLF": "Unidad de Fomento", "MOP": "Macanese pataca", "BGN": "Bulgarian lev", "TTD": "Trinidad dollar", "KPW": "North Korean won", "STD": "São Tomé dobra", "ALL": "Albanian lek", "VUV": "Vanuatu vatu", "GBP": "Pound sterling", "BWP": "Botswana pula", "PHP": "Philippine peso", "CDF": "Congolese franc", "JPY": "Japanese yen", "RON": "Romanian new Leu", "CLP": "Chilean peso", "SZL": "Swazi lilangeni", "BDT": "Bangladeshi taka", "ERN": "Eritrean nakfa", "LVL": "Latvian Lats equals", "CYP": "Cypriot pound", "SCR": "Seychelles rupee", "PGK": "Papua New Guinean kina", "IRR": "Iranian rial", "MDL": "Moldovan leu", "SGD": "Singapore dollar", "BZD": "Belize dollar", "UGX": "Ugandan shilling", "MKD": "Macedonian denar", "SYP": "Syrian pound", "TZS": "Tanzanian shilling", "GMD": "Gambian dalasi", "MRO": "Mauritanian ouguiya", "SHP": "Saint Helena pound", "AMD": "Armenian dram", "CRC": "Costa Rican colon", "DOP": "Dominican peso", "FJD": "Fiji dollar", "BSD": "Bahamian dollar", "PKR": "Pakistani rupee", "SRD": "Surinamese dollar", "VND": "Vietnamese đồng", "SEK": "Swedish krona", "LBP": "Lebanese pound", "YER": "Yemeni rial", "ETB": "Ethipian birr", "DKK": "Danish krone", "MNT": "Mongolian tugrik", "ILS": "Israeli new shekel", "HKD": "Hong Kong dollar", "CNY": "Chinese yuan renminbi", "HUF": "Hungarian Forint", "IQD": "Iraqi dinar", "NGN": "Nigerian naira", "NOK": "Norwegian krone", "USD": "US dollar", "XOF": "CFA Franc BCEAO", "INR": "Indian rupee", "AFN": "Afghan Afghani", "MUR": "Mauritian rupee", "SBD": "Solomon Islands dollar", "RSD": "Serbian dinar", "ANG": "Netherlands Antillean guilder", "CNH": "Chinese yuan", "KZT": "Kazakhstani tenge", "UZS": "Uzbekitan som", "SVC": "Salvadoran colon", "JOD": "Jordanian dinar", "AWG": "Aruban guilder", "HNL": "Honduran lempira", "KHR": "Cambodian riel", "LYD": "Libyan dinar", "KES": "Kenyan shilling", "CVE": "Cape Verde escudo", "LRD": "Liberian dollar", "DJF": "Djiboutian franc", "ECS": "Ecuadorian sucre", "SAR": "Saudi riyal", "PEN": "Peruvian nuevo sol", "RUB": "Russian ruble", "MXN": "Mexican peso", "WST": "Samoan tala", "BIF": "Burundian franc", "MGA": "Malagasy ariayry", "FKP": "Falkland Islands pound", "AZN": "New azerbaijani Manat", "KYD": "Cayman Islands dollar", "BMD": "Bermudian dollar", "VEF": "Venezualan bolivar fuerte", "GEL": "Georgian lari", "LTL": "Lithuanian litas", "GNF": "Guinean franc", "MWK": "Malawian kwacha", "BOB": "Boliviano", "SIT": "Slovenian tolar", "BAM": "Convertible mark", "BTN": "Bhutanese ngultrum", "IDR": "Indonesian rupiah", "KWD": "Kuwaiti dinar", "AOA": "Angolan kwanza", "HTG": "Haitian gourde", "BHD": "Bahraini dinar", "XAF": "CFA Franc BEAC", "GHS": "Ghanaian Cedi", "NPR": "Nepalese rupee", "HRK": "Croatian kuna", "EGP": "Egyptian pound", "OMR": "Omani rial", "GYD": "Guyanese dollar", "CHF": "Swiss franc", "MAD": "Moroccan dirham", "PAB": "Panamanian balboa", "BBD": "Barbados dollar", "CUP": "Cuban peso"]
    
    static let unitFullName: NSDictionary = [
        
        "Pressure":["Millipascal", "Newton/square meter", "Newton/square millimeter", "Newton/square meter", "Pascal", "Standard atmosphere", "Bar", "Centimeter mercury (0 °C)", "Centimeter of water (4°C)", "Foot of water (4°C)", "Hectopascal", "Inch mercury (32 °F)", "Inch of water (4°C)", "Kilonewton/square millimeter", "Kilonetwon/square meter", "KiloPascal", "Kilogram-force/square centimeter", "Kilogram-force/square millimeter ", "Kip-force/square inch", "Ksi", "Pound-force/square foot", "Meters of water (4°C)", "megaN/m²", "millibar", "Millimeter mercury (0 °C)", "Millimeters of water (4°C)", "Pound-force/square foot", "Psi", "Tons(UK)force/square foot", "Tons(UK)force/square inch", "tons(US)force/square foot", "tons(US)force/square inch","Torr"],
        
        "Force":["Meganewton", "Newton", "Dekanewton", "Dyne", "Gram-force", "Kilonewton", "Kilogram-force", "kip-force", "pound-force", "Poundal", "Sthène", "Ton-force"],
        
        "Density":["Milligram/cubic meter", "Gram/liter", "Gram/cubic centimeter", "Gram/milliliter", "gr/gal(UK)", "Grain/gallon (US)", "Kilogram/liter", "Kilogram/cubic meter", "Pound/cubic feet", "Pound/gallon (UK)", "Pound/gal (US)", "Pound/cubic inch", "Milligram/liter", "Milligram/milliliter", "Ounce/gallon (UK)", "Ounce/gallon (US)", "Ounch/cubic inch", "Slug/cubic feet", "Tonnes/cubic meters", "Tons(UK)/cubic yard", "Tons(US)/cubic yard"],
        
        "Weight":["Long Ton","Carrat", "Gram", "Kilogram", "Pound","Milligram","Ounce", "Metric Ton",   "Short Ton"],
        
        "Temperature":["Celsius", "Fahrenheit", "Kelvin"],
        
        "Time":["Day", "Hour", "Minute", "Month", "Millisecond", "Second", "Week", "Year"],
        
        "Speed":["Foot/minute", "Kilometer/hour", "Kilometer/minute", "Knot", "Meters/minute", "Mach", "Miles/hour", "Minute/kilometer", "Minute/mile"],
        
        "Area":["Acre", "Square centimeter", "Square foot", "Hectare", "Square inch", "Square kilometer", "Square millimeter", "Square meter", "Square yard"],
        
        "Volume":["Liter", "barrel dry", "Cubic centimeter", "Deciliter", "Fluid ounce (US)", "Cubic feet", "Gallon (UK)", "Gallon (US)", "Cubic inch", "Milliliter", "Cubic meter", "Quart (US)", "Cubic yard"],
        
        "length":["nanometer", "Ceintimeter", "Decimeter", "Foot", "Inch", "Kilometer", "Meter", "Mile", "Yard"],
        
        "Data":["Bit", "Block", "Byte", "Gigabit/s", "Gibibyte", "Kilobit/s", "Kibibyte", "Megabit", "Mibibyte", "Packet", "Pibibyte", "Tibibyte"],
        
        "Fuel":["Kilometer/liter", "Kilometer/gallon (US)", "Miles/liter", "Miles/gallon (UK)", "Miles/gallon (US)"],
        
        "Power":["BTU/hour", "BTU/minute", "BTU/seconds", "Gigawatt", "Horsepower", "Megawatt", "Petawatt", "Ton of Refrigiration", "Terawatt", "Watt", "Calorie/hour", "Calorie/minute", "Calorie/seconds", "Decibel-milliwatts", "footlbsforce/min", "Foot-pound-force/seconds", "Joules/hour", "Joules/minute", "Joules/seconds", "Kilocalorie/hour", "Kilocalorie/minute", "Kilowatt", "Kilocalorie/hour", "Kilocalorie/seconds", "Kilogram-force-meter/minute", "Kilogram-force-meter/hour", "Pferdestarke"],
        
        "Viscosity":["Poise", "Pascal-second", "Centipoise", "Dyne-second/square centimeter", "Kilogram/milliseconds", "Pound/foot/seconds", "Millipascal-second"],
        
        "Torque":["Newton meter", "Dekanewton meter", "Kilonewton meter", "Kilogram-force meter", "pound-force foot", "Pound-force inch", "Ounce-force inch"],
        
        "Astronomy":["Astronomical unit", "Kilometer", "Lightyear", "Mile", "Parsec"],
        
        "Angle":["6000 mile", "6400 mile", "Circle", "Degree", "Grad", "Minute", "Radian", "Second"]
    ]

    
    
}