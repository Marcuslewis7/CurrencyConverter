//
//  ReturnedCountry.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 31/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import Foundation
import UIKit

struct ReturnedCountry {
    
    private(set) public var initial: String
    private(set) public var value: Decimal
    
    init(initial: String, value: Decimal) {
        self.initial = initial
        self.value = value
    }
    
}


