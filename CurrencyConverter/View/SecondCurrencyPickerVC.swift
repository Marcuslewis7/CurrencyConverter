//
//  SecondCurrencyPickerVC.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 28/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import UIKit

class SecondCurrencyPickerVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var secondCountryTable: UITableView!
    
    var myFirstPassCountry = String()
    var mySecondPassCountry = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondCountryTable.dataSource = self
        secondCountryTable.delegate = self
        self.secondCountryTable.rowHeight = 80.0
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCountries().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCountryTableCell") as? SecondCountryTableCell
        {
            let country = DataService.instance.getCountries()[indexPath.row]
            cell.updateViews(country: country)
            return cell
        } else {
            return SecondCountryTableCell()
        }
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chosenCountry = DataService.instance.countries[indexPath.row]
        print("2: Second chosen country: \(chosenCountry.initial)")
        mySecondPassCountry = chosenCountry.initial
        performSegue(withIdentifier: "secondCountrySelected", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondCountrySelected" {
            print("2: stored Country: \(mySecondPassCountry)")
            let toNextVC = segue.destination as? EndVC
            print("2: " + myFirstPassCountry)
            print("2: " + mySecondPassCountry)
            toNextVC?.myFirstPassCountry = myFirstPassCountry
            toNextVC?.mySecondPassCountry = mySecondPassCountry
        }
    }


}
