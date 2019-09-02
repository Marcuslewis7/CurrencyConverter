//
//  DataService.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 27/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    let countries = [
        //Country(flag: "AUD.png", initial: "AUD", countryName:  "Australian Dollar"),
        //Country(flag: "BGN.png", initial: "BGN", countryName:  "Bulgarian Lev"),
        //Country(flag: "BRL.png", initial: "BRL", countryName:  "Brazilian Real"),
        //Country(flag: "CAD.png", initial: "CAD", countryName:  "Canadian Dollar"),
        //Country(flag: "CHF.png", initial: "CHF", countryName:  "Swiss Franc"),
        //Country(flag: "CNY.png", initial: "CNY", countryName:  "Chinese Yuan"),
        Country(flag: "CZK.png", initial: "CZK", countryName:  "Czech Koruna"),
        Country(flag: "DKK.png", initial: "DKK", countryName:  "Danish Krone"),
        Country(flag: "EUR.png", initial: "EUR", countryName:  "Euro"),
        Country(flag: "GBP.png", initial: "GBP", countryName:  "Great British Pound"),
        Country(flag: "HKD.png", initial: "HKD", countryName:  "Hong Kong Dollar"),
        //Country(flag: "HRK.png", initial: "HRK", countryName:  "Croatian Kuna"),
        Country(flag: "HUF.png", initial: "HUF", countryName:  "Hungarian Forint"),
        //Country(flag: "IDR.png", initial: "IDR", countryName:  "Indonesian Rupiah"),
        //Country(flag: "ILS.png", initial: "ILS", countryName:  "Israeli New Shekel"),
        //Country(flag: "INR.png", initial: "INR", countryName:  "Indian Rupee"),
        //Country(flag: "ISK.png", initial: "ISK", countryName:  "Icelandic Króna"),
        //Country(flag: "JPY.png", initial: "JPY", countryName:  "Japanese Yen"),
        //Country(flag: "KRW.png", initial: "KRW", countryName:  "South Korean won"),
        //Country(flag: "MXN.png", initial: "MXN", countryName:  "Mexican Peso"),
        //Country(flag: "MYR.png", initial: "MYR", countryName:  "Malaysian Ringgit"),
        Country(flag: "NOK.png", initial: "NOK", countryName:  "Norwegian Krone"),
        //Country(flag: "NZD.png", initial: "NZD", countryName:  "New Zealand Dollar"),
        //Country(flag: "PHP.png", initial: "PHP", countryName:  "Philippine peso"),
        Country(flag: "PLN.png", initial: "PLN", countryName:  "Poland złoty"),
        //Country(flag: "RON.png", initial: "RON", countryName:  "Romanian Leu"),
        //Country(flag: "RUB.png", initial: "RUB", countryName:  "Russian Ruble"),
        Country(flag: "SEK.png", initial: "SEK", countryName:  "Swedish Krona"),
        Country(flag: "SGD.png", initial: "SGD", countryName:  "Singapore Dollar"),
        //Country(flag: "THB.png", initial: "THB", countryName:  "Thai Baht"),
        Country(flag: "USD.png", initial: "USD", countryName:  "United States Dollar"),
        //Country(flag: "ZAR.png", initial: "ZAR", countryName:  "South African Rand")
    ]
    
    func getCountries() -> [Country] {
        return countries
    }

}
