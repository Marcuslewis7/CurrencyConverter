//
//  FirstCountryTableCell.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 27/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import Foundation
import UIKit

class FirstCountryTableCell: UITableViewCell  {
    
    @IBOutlet weak var myInitial: UILabel!
    @IBOutlet weak var myCountryName: UILabel!
    @IBOutlet weak var myFlag: UIImageView!
    
    func updateViews(country: Country) {
        myFlag.image = UIImage(named: country.flag)
        myInitial.text = country.initial
        myCountryName.text = country.countryName
    }
    
}
