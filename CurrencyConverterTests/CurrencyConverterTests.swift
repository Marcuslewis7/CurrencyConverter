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
    
    //Checks that initial for United Kingdom is still GBP
    func testInitialGBP(){
        let countryModel = DataService.instance.countries[0].initial
        let chosenCountry = "GBP"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that initial for United States is still USD
    func testInitialUSD(){
        let countryModel = DataService.instance.countries[1].initial
        let chosenCountry = "USA"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that initial for Australlia is still AUD
    func testInitialAUD(){
        let countryModel = DataService.instance.countries[2].initial
        let chosenCountry = "AUD"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that initial for France is still FRA
    func testInitialFRA(){
        let countryModel = DataService.instance.countries[3].initial
        let chosenCountry = "FRA"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that the Country Name of CZK is still "United Kingdom"
    func testCountryNameCZK(){
        let countryModel = DataService.instance.countries[0].initial
        let chosenCountry = "CZK"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that the Country Name of testCountryNameDKK is still "United States"
    func testCountryNameDKK(){
        let countryModel = DataService.instance.countries[1].initial
        let chosenCountry = "DKK"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that the Country Name of EUR is still "Australia"
    func testCountryNameEUR(){
        let countryModel = DataService.instance.countries[2].initial
        let chosenCountry = "EUR"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that the Country Name of France is still "France"
    func testCountryNameGBP(){
        let countryModel = DataService.instance.countries[3].initial
        let chosenCountry = "GBP"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks the name of the png file is still correct
    func testCountryFlagUK(){
        let countryModel = DataService.instance.countries[0].flag
        let chosenCountry = "GBP.png"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks the name of the png file is still correct
    func testCountryFlagUSA(){
        let countryModel = DataService.instance.countries[1].flag
        let chosenCountry = "USA.png"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks the name of the png file is still correct
    func testCountryFlagAUD(){
        let countryModel = DataService.instance.countries[2].flag
        let chosenCountry = "AUD.png"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks the name of the png file is still correct
    func testCountryFlagFRA(){
        let countryModel = DataService.instance.countries[3].flag
        let chosenCountry = "FRA.png"
        XCTAssertEqual(countryModel, chosenCountry)
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
    
    func testPerformanceExample() {
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
