//
//  PathOfLowestCostTests.swift
//  PathOfLowestCostTests
//
//  Created by MAC on 02/25/17.
//  Copyright © 2017 MAC.  All rights reserved.
//

import XCTest
@testable import PathOfLowestCost

class PathOfLowestCostTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // Test Designed to Ensure Matrix is Initialized Successfully
    func testMatrixSetupOnInitalization()
    {
        print("\nStart testGridSetupOnInitalization()\n")
        
        var challenge : Challenge = Challenge()
        challenge.matrix = [
                               [0, 1, 2, 3, 4, 5],
                               [2, 4, 6, 8, 10, 12],
                               [4, 8, 12, 16, 20, 24],
                               [6, 12, 18, 24, 30, 36],
                               [8, 16, 24, 32, 40, 48]
                            ]
        
        print("\n--- Matrix Entered ---\n")
        
        print("\(challenge.matrix) \n")
        
        print("\n--- Testing First Row ---\n")
        
        var elementFromMatrixTesting : Int = challenge.matrix[0][0]
        var expectedValue : Int = 0
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[0][1]
        expectedValue = 1
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[0][2]
        expectedValue = 2
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[0][3]
        expectedValue = 3
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[0][4]
        expectedValue = 4
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[0][5]
        expectedValue = 5
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        print("\n--- Testing First Column ---\n")
        
        elementFromMatrixTesting = challenge.matrix[1][0]
        expectedValue = 2
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[2][0]
        expectedValue = 4
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[3][0]
        expectedValue = 6
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[4][0]
        expectedValue = 8
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        print("\n--- Testing Last Column ---\n")
        
        elementFromMatrixTesting = challenge.matrix[1][5]
        expectedValue = 12
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[2][5]
        expectedValue = 24
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[3][5]
        expectedValue = 36
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[4][5]
        expectedValue = 48
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        print("\n--- Testing Last Row ---\n")
        
        elementFromMatrixTesting = challenge.matrix[4][1]
        expectedValue = 16
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[4][2]
        expectedValue = 24
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[4][3]
        expectedValue = 32
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        elementFromMatrixTesting = challenge.matrix[4][4]
        expectedValue = 40
        XCTAssert(elementFromMatrixTesting == expectedValue, "Expected Value (\(elementFromMatrixTesting) in Matrix is Incorrect! Expected Value is \(expectedValue).")
        print("Testing: \(elementFromMatrixTesting) == \(expectedValue)")
        
        print("\nEnd testGridSetupOnInitalization()\n")
    }
    
    func testRowAndColumnCountCorrectlySet()
    {
        print("\nStart testRowAndColumnCountCorrectlySet()\n")
        
        var challenge : Challenge = Challenge()
        challenge.matrix = [
            [0, 1, 2, 3, 4, 5],
            [2, 4, 6, 8, 10, 12],
            [4, 8, 12, 16, 20, 24],
            [6, 12, 18, 24, 30, 36],
            [8, 16, 24, 32, 40, 48]
        ]
        
        print("\n--- Matrix Entered ---")
        
        print("\(challenge.matrix) \n")
        
        print("--- RESULTS ---")
        XCTAssertEqual(challenge.getColumnCount(), 6, "Expected Column Total is 6, but current count is \(challenge.getColumnCount())")
        print("Column Check: \(challenge.getColumnCount()) == \(6)")
        
        XCTAssertEqual(challenge.getRowCount(), 5, "Expected Column Total is 6, but current count is \(challenge.getRowCount())")
        print("Row Check: \(challenge.getRowCount()) == \(5)")
        
        print("\nEnd testRowAndColumnCountCorrectlySet()\n")
    }
    
    func testMinimumMatrixSize() {
        print("\nStart testMinimumMatrixSize()\n")
        
        var c = Challenge()
        
        c.matrix = [
            [3, 4, -17, 2, -8, 6]
        ]
        
        print("\n--- Matrix Entered ---")
        
        print("\(c.matrix) \n")
        
        c.lookupBestRoute(limit: 50)
        
        print("--- RESULTS ---")
        print(c.reached ? "Yes" : "No")
        print(c.sum)
        print(c.path)
        
        XCTAssert(c.reached)
        XCTAssertEqual(c.sum, -10, "Expected Sum of -10 does not match \(c.sum)")
        XCTAssertEqual(c.path, "1 1 1 1 1 1", "Expected Path Doesn't Match Output")
        
        print("\nEnd testMinimumMatrixSize()\n")
    }
    
    func testNoSolutionPath()
    {
        print("\nStart testNoSolutionPath()\n")
        
        var c = Challenge()
        
        c.matrix = [
            [3, 4, 1, 2, 8, 6],
            [6, 1, 8, 2, 7, 4],
            [5, 9, 3, 9, 9, 5],
            [8, 4, 1, 3, 2, 6],
            [3, 7, 2, 1, 2, 3]
        ]
        
        print("\n--- Matrix Entered ---")
        
        print("\(c.matrix) \n")
        
        c.lookupBestRoute(limit: 2)
        
        print("--- RESULTS ---")
        print(c.reached ? "Yes" : "No")
        print(c.sum)
        print(c.path)
        
        XCTAssertFalse(c.reached, "This Challange is expecting 'No'")
        XCTAssertEqual(c.sum, 0, "Sum Expected to be 0")
        XCTAssertEqual(c.path, "", "Blank Path is Expected")
        
        print("\nEnd testNoSolutionPath()\n")
    }
    
    func testFirstProvidedExampleFromPDF()
    {
        print("\nStart testFirstProvidedExampleFromPDF()\n")
        
        var c = Challenge()
        
        c.matrix = [
            [3, 4, 1, 2, 8, 6],
            [6, 1, 8, 2, 7, 4],
            [5, 9, 3, 9, 9, 5],
            [8, 4, 1, 3, 2, 6],
            [3, 7, 2, 8, 6, 4]
        ]
        
        print("\n--- Matrix Entered ---")
        
        print("\(c.matrix) \n")
        
        c.lookupBestRoute(limit: 50)
        
        print("--- RESULTS ---")
        print(c.reached ? "Yes" : "No")
        print(c.sum)
        print(c.path)
        
        XCTAssert(c.reached, "This Challange is expecting 'Yes'")
        XCTAssertEqual(c.sum, 16, "Sum Expected to be 16")
        XCTAssertEqual(c.path, "1 2 3 4 4 5", "Unexpected Sequence \(c.path) instead of \"1 2 3 4 4 5\"")
        
        print("\nEnd testFirstProvidedExampleFromPDF()\n")
    }
    
    func testSecondProvidedExampleFromPDF()
    {
        print("\nStart testSecondProvidedExampleFromPDF()\n")
        
        var c = Challenge()
        
        c.matrix = [
            [3, 4, 1, 2, 8, 6],
            [6, 1, 8, 2, 7, 4],
            [5, 9, 3, 9, 9, 5],
            [8, 4, 1, 3, 2, 6],
            [3, 7, 2, 1, 2, 3]
        ]
        
        print("\n--- Matrix Entered ---")
        
        print("\(c.matrix) \n")
        
        c.lookupBestRoute(limit: 50)
        
        print("--- RESULTS ---")
        print(c.reached ? "Yes" : "No")
        print(c.sum)
        print(c.path)
        
        XCTAssert(c.reached, "This Challange is expecting 'Yes'")
        XCTAssertEqual(c.sum, 11, "Sum Expected to be 11")
        XCTAssertEqual(c.path, "1 2 1 5 4 5", "Unexpected Sequence \(c.path) instead of \"1 2 3 4 4 5\"")
        
        print("\nEnd testSecondProvidedExampleFromPDF()\n")
    }
    
    func testThirdProvidedExampleFromPDF()
    {
        print("\nStart testThirdProvidedExampleFromPDF()\n")
        
        var c = Challenge()
        
        c.matrix = [
            [19, 10, 19, 10, 19],
            [21, 23, 20, 19, 12],
            [20, 12, 20, 11, 10]
        ]
        
        print("\n--- Matrix Entered ---")
        
        print("\(c.matrix) \n")
        
        c.lookupBestRoute(limit: 50)
        
        
        print("--- RESULTS ---")
        print(c.reached ? "Yes" : "No")
        print(c.sum)
        print(c.path)
        
        XCTAssertFalse(c.reached, "This Challange is expecting 'No'")
        XCTAssertEqual(c.sum, 48, "Sum Expected to be 48")
        XCTAssertEqual(c.path, "1 1 1", "Unexpected Sequence \(c.path) instead of \"1 1 1\"")
        
        print("\nEnd testThirdProvidedExampleFromPDF()\n")
    }
    
    func testSolutionWithNegativeNodeValues()
    {
        print("\nStart testSolutionWithNegativeNodeValues()\n")
        
        var c = Challenge()
        
        c.matrix = [
            [1, -1, 5, -14, 8],
            [-1, -10, 10, 13, 3],
            [-10, 10, 3, -10, -7]
        ]
        
        print("\n--- Matrix Entered ---")
        
        print("\(c.matrix) \n")
        
        c.lookupBestRoute(limit: 50)
        
        print("--- RESULTS ---")
        print(c.reached ? "Yes" : "No")
        print(c.sum)
        print(c.path)
        
        XCTAssert(c.reached, "This Challange is expecting 'Yes'")
        XCTAssertEqual(c.sum, -38, "Sum Expected to be \(-38)")
        XCTAssertEqual(c.path, "3 2 3 1 3", "Unexpected Sequence \(c.path) instead of \"3 2 3 1 3\"")
        
        print("\nEnd testSolutionWithNegativeNodeValues()\n")
    }
    
}
