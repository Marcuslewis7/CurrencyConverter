//
//  ReturnedCountry.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 01/09/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import Foundation

struct ReturnedCountry {

    private(set) public var initial: String
    private(set) public var initial2: String
    //private(set) public var value: String
    
    init(initial: String, initial2: String/*, countryName: String*/) {
        self.initial = initial
        self.initial2 = initial2
    }
}
