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
    
    static let currencyConstants: NSDictionary = ["JMD": "Jamaican dollar", "CAD": "Canadian dollar", "BRL": "Brazilian real", "XPF": "French Pacific franc", "SLL": "Sierra Leonean leone", "MYR": "Malaysian ringgit", "EUR": "Euro", "SOS": "Somali shilling", "NAD": "Namibian dollar", "TRY": "Turkish lira", "DZD": "Algerian dinar", "IEP": "Irish Pound", "KMF": "Comoro franc", "UYU": "Urugayan peso", "TWD": "New Taiwan dollar", "TMT": "Turkmenistani new manat", "GTQ": "Guatemalan quetzal", "GIP": "Gibraltar pound", "MVR": "Maldivian rufiyaa", "ZMW": "Zambian kwacha", "AED": "UAE dirham", "KGS": "Kyrgyzstani som", "NZD": "New Zealand dollar", "BYR": "Belarusian ruble", "MZN": "Mozambican metical", "BND": "Brunei dollar", "RWF": "Rwandan franc", "THB": "Thai baht", "UAH": "Ukrainian hryvnia", "COP": "Colombian peso", "PLN": "Polish zloty", "ISK": "Icelandic króna", "XCD": "East Caribbean dollar", "ARS": "Argentine peso", "LKR": "Sri Lankan rupee", "MMK": "Myanma kyat", "QAR": "Qatari riyal", "ZAR": "South African rand", "ZWL": "Zimbabwean dollar", "MXV": "Mexican Unidad De Inversion", "TJS": "Tajikistani somoni", "LSL": "Lesotho loti", "LAK": "Lao kip", "KRW": "South Korean won", "CZK": "Czech koruna", "DEM": "German Deutsche Mark", "AUD": "Australian dollar", "ITL": "Italian lira", "XDR": "IMF Special Drawing Rights", "TND": "Tunisian dinar", "SDG": "Sudanese pound", "PYG": "Paraguayan guaraní", "TOP": "Tongan pa'anga", "FRF": "French franc", "NIO": "Nicaraguan córdoba", "CLF": "Unidad de Fomento", "MOP": "Macanese pataca", "BGN": "Bulgarian lev", "TTD": "Trinidad dollar", "KPW": "North Korean won", "STD": "São Tomé dobra", "ALL": "Albanian lek", "VUV": "Vanuatu vatu", "GBP": "Pound sterling", "BWP": "Botswana pula", "PHP": "Philippine peso", "CDF": "Congolese franc", "JPY": "Japanese yen", "RON": "Romanian new Leu", "CLP": "Chilean peso", "SZL": "Swazi lilangeni", "BDT": "Bangladeshi taka", "ERN": "Eritrean nakfa", "LVL": "Latvian Lats equals", "CYP": "Cypriot pound", "SCR": "Seychelles rupee", "PGK": "Papua New Guinean kina", "IRR": "Iranian rial", "MDL": "Moldovan leu", "SGD": "Singapore dollar", "BZD": "Belize dollar", "UGX": "Ugandan shilling", "MKD": "Macedonian denar", "SYP": "Syrian pound", "TZS": "Tanzanian shilling", "GMD": "Gambian dalasi", "MRO": "Mauritanian ouguiya", "SHP": "Saint Helena pound", "AMD": "Armenian dram", "CRC": "Costa Rican colon", "DOP": "Dominican peso", "FJD": "Fiji dollar", "BSD": "Bahamian dollar", "PKR": "Pakistani rupee", "SRD": "Surinamese dollar", "VND": "Vietnamese đồng", "SEK": "Swedish krona", "LBP": "Lebanese pound", "YER": "Yemeni rial", "ETB": "Ethipian birr", "DKK": "Danish krone", "MNT": "Mongolian tugrik", "ILS": "Israeli new shekel", "HKD": "Hong Kong dollar", "CNY": "Chinese yuan renminbi", "HUF": "Hungarian Forint", "IQD": "Iraqi dinar", "NGN": "Nigerian naira", "NOK": "Norwegian krone", "USD": "US dollar", "XOF": "CFA Franc BCEAO", "INR": "Indian rupee", "AFN": "Afghan Afghani", "MUR": "Mauritian rupee", "SBD": "Solomon Islands dollar", "RSD": "Serbian dinar", "ANG": "Netherlands Antillean guilder", "CNH": "Chinese yuan", "KZT": "Kazakhstani tenge", "UZS": "Uzbekitan som", "SVC": "Salvadoran colon", "JOD": "Jordanian dinar", "AWG": "Aruban guilder", "HNL": "Honduran lempira", "KHR": "Cambodian riel", "LYD": "Libyan dinar", "KES": "Kenyan shilling", "CVE": "Cape Verde escudo", "LRD": "Liberian dollar", "DJF": "Djiboutian franc", "ECS": "Ecuadorian sucre", "SAR": "Saudi riyal", "PEN": "Peruvian nuevo sol", "RUB": "Russian ruble", "MXN": "Mexican peso", "WST": "Samoan tala", "BIF": "Burundian franc", "MGA": "Malagasy ariayry", "FKP": "Falkland Islands pound", "AZN": "New azerbaijani Manat", "KYD": "Cayman Islands dollar", "BMD": "Bermudian dollar", "VEF": "Venezualan bolivar fuerte", "GEL": "Georgian lari", "LTL": "Lithuanian litas", "GNF": "Guinean franc", "MWK": "Malawian kwacha", "BOB": "Boliviano", "SIT": "Slovenian tolar", "BAM": "Convertible mark", "BTN": "Bhutanese ngultrum", "IDR": "Indonesian rupiah", "KWD": "Kuwaiti dinar", "AOA": "Angolan kwanza", "HTG": "Haitian gourde", "BHD": "Bahraini dinar", "XAF": "CFA Franc BEAC", "GHS": "Ghanaian Cedi", "NPR": "Nepalese rupee", "HRK": "Croatian kuna", "EGP": "Egyptian pound", "OMR": "Omani rial", "GYD": "Guyanese dollar", "CHF": "Swiss franc", "MAD": "Moroccan dirham", "PAB": "Panamanian balboa", "BBD": "Barbados dollar", "CUP": "Cuban peso"]
    

    
    
}