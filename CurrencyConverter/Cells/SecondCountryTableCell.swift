//
//  SecondCountryTableCell.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 28/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import Foundation
import UIKit

class SecondCountryTableCell: UITableViewCell  {
    @IBOutlet weak var mySecondInitial: UILabel!
    @IBOutlet weak var mySecondCountryName: UILabel!
    @IBOutlet weak var mySecondFlag: UIImageView!
    
    func updateViews(country: Country) {
        mySecondFlag.image = UIImage(named: country.flag)
        mySecondInitial.text = country.initial
        mySecondCountryName.text = country.countryName
    }
    
}
