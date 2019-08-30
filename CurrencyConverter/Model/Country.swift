//
//  Country.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 27/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import Foundation
import UIKit

struct Country {
    
    private(set) public var flag: String
    private(set) public var initial: String
    private(set) public var countryName: String
    
    init(flag: String, initial: String, countryName: String) {
        self.flag = flag
        self.initial = initial
        self.countryName = countryName
    }
    
}
