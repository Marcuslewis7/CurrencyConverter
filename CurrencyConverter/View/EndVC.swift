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

class EndVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var conversionTableView: UITableView!
    
    var timer = Timer()
    var CoreDataCountryArray = [CoreDataCountry]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    static let instance = EndVC()
    var myFirstPassCountry = String()
    var mySecondPassCountry = String()
    public var baseURL = "https://europe-west1-revolut-230009.cloudfunctions.net/revolut-ios?pairs="
    public var myURLInput = String()
    var URL = String()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        conversionTableView.dataSource = self
        conversionTableView.delegate = self
        self.conversionTableView.rowHeight = 80.0
        scheduledTimerWithTimeInterval()
    }

    func scheduledTimerWithTimeInterval(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateCounting), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounting(){
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
                    let defaultValue = 0.0
                    let firstValue = (jsonResult["\(self.myFirstPassCountry)\(self.mySecondPassCountry)"] as? Double) ?? defaultValue
                    
                    let predicate = NSPredicate(format: "combo == %@", "\(self.myFirstPassCountry)\(self.mySecondPassCountry)")
                    request.predicate = predicate
                    
                    do{
                        let object = try self.context.fetch(request)
                        if object.count == 1 {
                            let objectUpdate = object.first as! NSManagedObject
                            objectUpdate.setValue(firstValue, forKey: "value")
                            do{
                                try self.context.save()
                            }
                            catch
                            {
                                print(error)
                            }
                        }
                        else{
                            self.newItem(firstValue: firstValue)
                        }
                    }
                    catch let error as NSError {
                        print("Could not fetch \(error), \(error.userInfo)")
                    }
                    
                    DispatchQueue.main.async {
                        self.conversionTableView.reloadData()
                    }
                }
            } catch let error as NSError {
                print(error)
            }
        })
    }
    
    func newItem(firstValue: Double){
        let newItem = CoreDataCountry(context: self.context)
        newItem.initial = self.myFirstPassCountry
        newItem.initial2 = self.mySecondPassCountry
        newItem.value = firstValue
        newItem.combo = "\(self.myFirstPassCountry)\(self.mySecondPassCountry)"
        self.CoreDataCountryArray.append(newItem)
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
    
    
    /////////Table View functions/////////////
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CoreDataCountryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ConversionTableCell") as? ConversionTableCell {
            let coreDataCountry = CoreDataCountryArray[indexPath.row]
            cell.initial.text = coreDataCountry.initial
            cell.initial2.text = coreDataCountry.initial2
            cell.value.text = String(coreDataCountry.value)
            return cell
        } else {
            return ConversionTableCell()
        }
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.context.delete(self.CoreDataCountryArray[indexPath.row])
            self.CoreDataCountryArray.remove(at: indexPath.row)
            conversionTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}


/*weak var timer: Timer?
 var timerDispatchSourceTimer : DispatchSourceTimer?
 if #available(iOS 10.0, *) {
 timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
 
 }
 }*/
