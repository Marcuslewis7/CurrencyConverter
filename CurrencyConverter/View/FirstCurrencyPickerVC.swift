//
//  FirstCurrencyPickerVC.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 27/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import UIKit

class FirstCurrencyPickerVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var firstCountryTable: UITableView!
    
    var myFirstPassCountry = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstCountryTable.dataSource = self
        firstCountryTable.delegate = self
        self.firstCountryTable.rowHeight = 80.0
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCountries().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCountryTableCell") as? FirstCountryTableCell
        {
            let country = DataService.instance.getCountries()[indexPath.row]
            cell.updateViews(country: country)
            return cell
        } else {
            return FirstCountryTableCell()
        }
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chosenCountry = DataService.instance.countries[indexPath.row]
        myFirstPassCountry = chosenCountry.initial
        performSegue(withIdentifier: "firstCountrySelected", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstCountrySelected" {
            let toNextVC = segue.destination as? SecondCurrencyPickerVC
            toNextVC?.myFirstPassCountry = myFirstPassCountry
        }
    }

}
