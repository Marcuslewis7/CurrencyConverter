//
//  ConversionTableCell.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 31/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import UIKit
import Foundation

class ConversionTableCell: UITableViewCell  {
    
    @IBOutlet weak var initial: UILabel!
    @IBOutlet weak var initial2: UILabel!
    @IBOutlet weak var value: UILabel!
    
    func updateViews(country: ReturnedCountry) {
        initial.text = country.initial
        initial2.text = country.initial2
        //value.text = country.value
    }
 
    
    
}
