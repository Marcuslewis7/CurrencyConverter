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
        Country(flag: "GBP.png", initial: "GBP", countryName: "United Kingdom"),
        Country(flag: "USA.png", initial: "USD", countryName: "United States"),
        Country(flag: "AUD.png", initial: "AUD", countryName: "Australia"),
        Country(flag: "FRA.png", initial: "FRA", countryName: "France")
    ]
    
    func getCountries() -> [Country] {
        return countries
    }

}
