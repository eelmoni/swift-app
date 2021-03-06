//
//  SwiftAppTests.swift
//  SwiftAppTests
//
//  Created by Distillery on 02/06/2022.
//

import XCTest
@testable import SwiftApp

class SwiftAppTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        game = Game()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        game = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        // XCTAssertEqual(game.points(sliderValue: 50), 999)
    }
    
    func testScorePositive() throws {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        
        print("Emma values 1:", guess, score)
        
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() throws {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        
        print("Emma values 2:", guess, score)
        
        XCTAssertEqual(score, 95)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
