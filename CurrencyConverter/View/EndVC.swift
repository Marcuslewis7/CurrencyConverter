//
//  EndVC.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 28/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import UIKit
import CoreData

class EndVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var conversionTableView: UITableView!
    
    var CoreDataCountryArray = [CoreDataCountry]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    static let instance = EndVC()
    var myFirstPassCountry = String()
    var mySecondPassCountry = String()
    var baseURL = "https://europe-west1-revolut-230009.cloudfunctions.net/revolut-ios?pairs="
    var myURLInput = String()
    var URL = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conversionTableView.dataSource = self
        conversionTableView.delegate = self
        //conversionTableView.reloadData()
        self.conversionTableView.rowHeight = 80.0
        
        let request : NSFetchRequest<CoreDataCountry> = CoreDataCountry.fetchRequest()
        loadCoreDataCountry(with: request)
    
        let myURLInput = "\(myFirstPassCountry)\(mySecondPassCountry)&pairs=\(mySecondPassCountry)\(myFirstPassCountry)"
        let URL = baseURL + myURLInput
        let urlPath: String = baseURL + myURLInput
        let url: NSURL = NSURL(string: urlPath)!
        let request1: URLRequest = URLRequest(url: url as URL)
        let queue:OperationQueue = OperationQueue()
        
        NSURLConnection.sendAsynchronousRequest(request1, queue: queue, completionHandler:{ (response: URLResponse?, data: Data?, error: Error?) -> Void in
            do {
                if let jsonResult = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary {
                    print(URL)
                    print(jsonResult)
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        })
        
        
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CoreDataCountryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ConversionTableCell") as? ConversionTableCell {
            let coreDataCountry = CoreDataCountryArray[indexPath.row]
            //cell.textLabel?.text = coreDataCountry.countries1
            //cell.textLabel2?.text = coreDataCountry.countries2
            //cell.valueLabel?.text = coreDataCountry.conversion1
            //cell.valueLabel2?.text = coreDataCountry.conversion2
            //cell.delegate = self
            return cell
        } else {
            return ConversionTableCell()
        }
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
    
    func loadCoreDataCountry(with request: NSFetchRequest<CoreDataCountry> = CoreDataCountry.fetchRequest()) {
        do {
            CoreDataCountryArray = try context.fetch(request)
        } catch {
            print("Error fetching data for context")
        }
    }


}

/*extension EndVC: SwipeTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            self.context.delete(self.itemArray[indexPath.row])
            self.itemArray.remove(at: indexPath.row)
            self.saveItems()
        }
        deleteAction.image = UIImage(named: "deleteIcon")
        return [deleteAction]
    }
    
}
*/
