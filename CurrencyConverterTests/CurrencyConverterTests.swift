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
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCountryModel() {
        //test evaulates if all items from countries in DataService are fed in.
        let dataService = DataService.instance.getCountries().count
        XCTAssertEqual(dataService, 4)
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
    
    //Checks that the Country Name of UK is still "United Kingdom"
    func testCountryNameUK(){
        let countryModel = DataService.instance.countries[0].countryName
        let chosenCountry = "United Kingdom"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that the Country Name of USA is still "United States"
    func testCountryNameUSA(){
        let countryModel = DataService.instance.countries[1].countryName
        let chosenCountry = "United States"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that the Country Name of Australia is still "Australia"
    func testCountryNameAUD(){
        let countryModel = DataService.instance.countries[2].countryName
        let chosenCountry = "Australia"
        XCTAssertEqual(countryModel, chosenCountry)
    }
    
    //Checks that the Country Name of France is still "France"
    func testCountryNameFRA(){
        let countryModel = DataService.instance.countries[3].countryName
        let chosenCountry = "Australia"
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
    
    func testPerformanceExample() {
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
