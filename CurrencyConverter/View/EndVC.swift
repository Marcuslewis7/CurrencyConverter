//
//  EndVC.swift
//  CurrencyConverter
//
//  Created by Marcus Lewis on 28/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import Foundation
import UIKit
import CoreData

struct ResponseData: Decodable {
    //var name: String
    var GBPUSD: Decimal
}

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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        conversionTableView.dataSource = self
        conversionTableView.delegate = self
        self.conversionTableView.rowHeight = 80.0
        
        let request : NSFetchRequest<CoreDataCountry> = CoreDataCountry.fetchRequest()
        loadCoreDataCountry(with: request)
        let myURLInput = "\(myFirstPassCountry)\(mySecondPassCountry)&pairs=\(mySecondPassCountry)\(myFirstPassCountry)"
        let URL = baseURL + myURLInput
        let urlPath: String = baseURL + myURLInput
        let url: NSURL = NSURL(string: urlPath)!
        let request1: URLRequest = URLRequest(url: url as URL)
        let queue:OperationQueue = OperationQueue()
        
        //weak var timer: Timer?
        //var timerDispatchSourceTimer : DispatchSourceTimer?
        //if #available(iOS 10.0, *) {
        //    timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
        NSURLConnection.sendAsynchronousRequest(request1, queue: queue, completionHandler:{ (response: URLResponse?, data: Data?, error: Error?) -> Void in
            do {
                if let jsonResult = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary {
                    print(URL)
                    print(jsonResult)
                    let defaultValue = 0.0
                    let firstValue = (jsonResult["\(self.myFirstPassCountry)\(self.mySecondPassCountry)"] as? Double) ?? defaultValue
                    print(firstValue)
                    print("1 \(self.myFirstPassCountry) is equal to \(firstValue) \(self.mySecondPassCountry)")
                    
                    
                    let newItem = CoreDataCountry(context: self.context)
                    newItem.initial = self.myFirstPassCountry
                    newItem.initial2 = self.mySecondPassCountry
                    newItem.value = firstValue
                    self.CoreDataCountryArray.append(newItem)
                    self.saveCountries()
                    
                }
            } catch let error as NSError {
                print(error)
            }
        })
        //}
    }
    
    /*override func viewDidLoad() {
        super.viewDidLoad()
        
    }*/

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CoreDataCountryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ConversionTableCell") as? ConversionTableCell {
            let coreDataCountry = CoreDataCountryArray[indexPath.row]
            //cell.textLabel?.text = coreDataCountry.initial
            //cell.detailTextLabel?.text = coreDataCountry.initial2
            
            cell.initial.text = coreDataCountry.initial
            cell.initial2.text = coreDataCountry.initial2
            //let doubValue = "error"
            //cell.value.text = (coreDataCountry.value as? String) ?? doubValue
            cell.value.text = String(coreDataCountry.value)
            
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
        self.context.delete(self.CoreDataCountryArray[indexPath.row])
        self.CoreDataCountryArray.remove(at: indexPath.row)
        self.saveCountries()
    }
    
    func loadCoreDataCountry(with request: NSFetchRequest<CoreDataCountry> = CoreDataCountry.fetchRequest()) {
        do {
            CoreDataCountryArray = try context.fetch(request)
        } catch {
            print("Error fetching data for context")
        }
    }
    
    func saveCountries(){
        do{
            try context.save()
        } catch {
            print("error saving context")
        }
        self.conversionTableView.reloadData()
    }
    
    
}
