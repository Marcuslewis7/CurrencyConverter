//
//  EndVC.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 28/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import UIKit

class EndVC: UIViewController /*UITableViewDataSource, UITableViewDelegate*/ {
    
    var myFirstPassCountry = String()
    var mySecondPassCountry = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("3: " + myFirstPassCountry)
        print("3: " + mySecondPassCountry)
        
    }
    
    /*func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let chosenWorkout = DataService.instance.allWorkouts[indexPath.row]
        //print("chosen videoCode: \(chosenWorkout.videoCode)")
        //myPassVideoCode = chosenWorkout.videoCode
        //print("this is my:  " + myPassVideoCode)//Note: this whole print does not appear in the console either
        //videocode.append(myPassVideoCode)
    }
     */


}
