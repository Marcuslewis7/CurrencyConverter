//
//  CurrencyConverterTests.swift
//  CurrencyConverterTests
//
//  Created by Marcus Lewis on 27/08/2019.
//  Copyright © 2019 Marcus Lewis. All rights reserved.
//

import XCTest
@testable import CurrencyConverter

class CurrencyConverterTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }
    
    func testCountryModel() {
        //test evaulates if all items from countries in DataService are fed in.
        let dataService = DataService.instance.getCountries().count
        XCTAssertEqual(dataService, 11)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialCZK(){
        let countryModelInitial = DataService.instance.countries[0].initial
        let countryModelName = DataService.instance.countries[0].countryName
        let countryFlag = DataService.instance.countries[0].flag
        let chosenCountry = "CZK"
        let chosenCountryName = "Czech Koruna"
        let chosenCountryFlag = "CZK.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialDKK(){
        let countryModelInitial = DataService.instance.countries[1].initial
        let countryModelName = DataService.instance.countries[1].countryName
        let countryFlag = DataService.instance.countries[1].flag
        let chosenCountry = "DKK"
        let chosenCountryName = "Danish Krone"
        let chosenCountryFlag = "DKK.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialEUR(){
        let countryModelInitial = DataService.instance.countries[2].initial
        let countryModelName = DataService.instance.countries[2].countryName
        let countryFlag = DataService.instance.countries[2].flag
        let chosenCountry = "EUR"
        let chosenCountryName = "Euro"
        let chosenCountryFlag = "EUR.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialGBP(){
        let countryModelInitial = DataService.instance.countries[3].initial
        let countryModelName = DataService.instance.countries[3].countryName
        let countryFlag = DataService.instance.countries[3].flag
        let chosenCountry = "GBP"
        let chosenCountryName = "Great British Pound"
        let chosenCountryFlag = "GBP.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialHKD(){
        let countryModelInitial = DataService.instance.countries[4].initial
        let countryModelName = DataService.instance.countries[4].countryName
        let countryFlag = DataService.instance.countries[4].flag
        let chosenCountry = "HKD"
        let chosenCountryName = "Hong Kong Dollar"
        let chosenCountryFlag = "HKD.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialHUG(){
        let countryModelInitial = DataService.instance.countries[5].initial
        let countryModelName = DataService.instance.countries[5].countryName
        let countryFlag = DataService.instance.countries[5].flag
        let chosenCountry = "HUF"
        let chosenCountryName = "Hungarian Forint"
        let chosenCountryFlag = "HUF.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialNOK(){
        let countryModelInitial = DataService.instance.countries[6].initial
        let countryModelName = DataService.instance.countries[6].countryName
        let countryFlag = DataService.instance.countries[6].flag
        let chosenCountry = "NOK"
        let chosenCountryName = "Norwegian Krone"
        let chosenCountryFlag = "NOK.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialPLN(){
        let countryModelInitial = DataService.instance.countries[7].initial
        let countryModelName = DataService.instance.countries[7].countryName
        let countryFlag = DataService.instance.countries[7].flag
        let chosenCountry = "PLN"
        let chosenCountryName = "Poland złoty"
        let chosenCountryFlag = "PLN.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialSEK(){
        let countryModelInitial = DataService.instance.countries[8].initial
        let countryModelName = DataService.instance.countries[8].countryName
        let countryFlag = DataService.instance.countries[8].flag
        let chosenCountry = "SEK"
        let chosenCountryName = "Swedish Krona"
        let chosenCountryFlag = "SEK.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialSGD(){
        let countryModelInitial = DataService.instance.countries[9].initial
        let countryModelName = DataService.instance.countries[9].countryName
        let countryFlag = DataService.instance.countries[9].flag
        let chosenCountry = "SGD"
        let chosenCountryName = "Singapore Dollar"
        let chosenCountryFlag = "SGD.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //Checks the values for the currency are still correct to ensure proper calls from API, use of .png asset and provides correct name to row.
    func testInitialUSD(){
        let countryModelInitial = DataService.instance.countries[10].initial
        let countryModelName = DataService.instance.countries[10].countryName
        let countryFlag = DataService.instance.countries[10].flag
        let chosenCountry = "USD"
        let chosenCountryName = "United States Dollar"
        let chosenCountryFlag = "USD.png"
        XCTAssertEqual(countryModelInitial, chosenCountry)
        XCTAssertEqual(countryModelName, chosenCountryName)
        XCTAssertEqual(countryFlag, chosenCountryFlag)
    }
    
    //checks first input country field starts off blank
    func testEndVCFirstCountry(){
        let firstChosenCountry = EndVC.instance.myFirstPassCountry
        XCTAssertEqual(firstChosenCountry, "")
    }
    
    //checks second input country field starts off blank
    func testEndVCSecondCountry(){
        let secondChosenCountry = EndVC.instance.mySecondPassCountry
        XCTAssertEqual(secondChosenCountry, "")
    }
    
    func testBaseURL(){
        let myBaseURL = EndVC.instance.baseURL
        let baseURL = "https://europe-west1-revolut-230009.cloudfunctions.net/revolut-ios?pairs="
        XCTAssertEqual(myBaseURL, baseURL)
    }
    
    
    func testURL(){
        var url = NSURL(string: "https://europe-west1-revolut-230009.cloudfunctions.net/revolut-ios")
        
        let task = URLSession.shared.dataTask(with: url! as URL) {(data, response, error) in
            if let myResponse = response as? HTTPURLResponse {
                print("status code=",myResponse.statusCode)
                //200 means OK
                if myResponse.statusCode == 200 {
                    print("200", NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
                }
            }else{
                print("\(error)")
            }
        }
        
    }
    
    func testPerformanceExample() {
        self.measure {
            testURL()
        }
    }

}
