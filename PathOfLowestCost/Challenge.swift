//
//  Challenge.swift
//  Challenge
//
//  Created by MAC on 02/25/17.
//  Copyright © 2017 MAC.  All rights reserved.
//

import Foundation

struct Challenge
{
    
    var matrix : [[Any]]
    {
        didSet
        {
            
            // Max Number of Rows
            rows = matrix.count
            
            // Max Number of Columns
            columns = matrix[0].count
            
            invalidMatrix = false

            
            for row in 0 ... rows - 1 {
                if matrix[row].count != columns {
                    invalidMatrix = true
                    break
                }
                for column in 0 ... columns - 1 {
                    if let _ = matrix[row][column] as? Int {
                        
                    }else {
                        invalidMatrix = true
                        break
                    }
                    
                }
                if invalidMatrix {
                    break
                }
            }
            
            
            // Bool to indicate reached end of Matrix
            reached = false
            // String representation of path taken
            path = ""
            
            // Interger sum of the values taken in path
            sum = 0
        }
    }
    
    // Two Dimensional Array of Tuple Values for Node Representation
    var best_routes : [[ (Int, Int) ] ] = []
    
    // One Dimentional Array of Tuple Values to represent best route found
    var best_route : [ (Int, Int) ]?
    
    // Integer value used to store current longest path found in algorithm
    var longestRoutePathLength : Int = 1
    
    // Column and Row values
    var columns : Int
    var rows : Int
    
    // Variable used to later print-out results uniformly
    var reached : Bool = false
    var path : String = ""
    var sum : Int = 0
    var invalidMatrix : Bool = false
    // Initializer function used in instantiating an instance of a challenge
    init()
    {
        matrix = [[Int]]()
        columns = 0
        rows = 0
    }
    
    func getRowCount() -> Int
    {
        return rows
    }
    
    func getColumnCount() -> Int
    {
        return columns
    }
    
    // Main function used to implement the puzzle solution
    mutating func lookupBestRoute(limit : Int = 50)
    {
        if !invalidMatrix {
        // Loop through the number of columns in attempt to find complete path
        for column in 0 ... self.columns
        {
            // Check if need to initialize best_routes with first viable route
            if self.best_routes.count == 0 && column == 0
            {
                // Loop through possible rows
                for row in 0 ..< rows
                {
                    // Verify cell in matrix meets or is less than limit seeking
                    let value = self.matrix[row][column] as! Int
                    if value <= limit
                    {
                        // Node found meets requirements and should be added as a viable route
                        self.best_routes.append([(row , value)])
                    }
                }
            }
            // Check if we've reached end of columns in matrix
            else if column < self.columns
            {
                // Enumerate over best_routes to continually seek most viable path
                for (_, route) in self.best_routes.enumerated()
                {
                    self.best_routes.removeFirst()
                    if route.count < column
                    {
                        self.best_routes.append( route )
                        continue
                    }
                    
                    // Calculate Connective Nodes to Current Node
                    let lastItem = route[route.count-1]
                    let prevIndex = ( lastItem.0 - 1 < 0 ) ? self.rows - 1 : lastItem.0 - 1
                    let nextIndex = ( lastItem.0 + 1 == self.rows ) ? 0 : lastItem.0 + 1
                    
                    // Create Variable to hold Viable Candidates
                    var candidates : [ (Int, Int) ] = []
                    
                    // Check if Top Node from current node is viable
                    //   ^
                    //  /
                    // /
                    var value = self.matrix[prevIndex][column] as! Int
                    if lastItem.1 + value <= limit
                    {
                        candidates.append((prevIndex , lastItem.1 + value))
                    }
                    
                    // Check if Horizontal Node from current node is viable
                    //
                    // -------------------------------->
                    value = self.matrix[lastItem.0][column] as! Int
                    if lastItem.1 + value <= limit
                    {
                        candidates.append((lastItem.0 , lastItem.1 + value))
                    }
                    
                    // Check if Bottom Node from current node is viable
                    // \
                    //  \
                    //   v
                    value = self.matrix[nextIndex][column] as! Int
                    if ( lastItem.1 + value <= limit )
                    {
                        candidates.append((nextIndex , lastItem.1 + value))
                    }
                    
                    // Loop through viable candidates to append to best routes
                    for candidate in candidates
                    {
                        var new_route = route
                        new_route.append(candidate)
                        self.best_routes.append( new_route )
                        self.longestRoutePathLength = new_route.count
                    }
                    
                    if(candidates.count == 0)
                    {
                        self.best_routes.append( route )
                    }
                }
                
                for k in 0 ..< best_routes.count
                {
                    let i = (self.best_routes.count - 1) - k
                    
                    if i >= 0 && best_routes[i].count < self.longestRoutePathLength
                    {
                        self.best_routes.remove(at: i)
                    }
                }
            }
            else if column == self.columns
            {
                for route in self.best_routes
                {
                    if let _ = self.best_route
                    {
                        if (self.best_route?.last?.1)! > (route.last?.1)!
                        {
                            self.best_route = route
                        }
                    }
                    else
                    {
                        self.best_route = route
                    }
                }
                self.best_routes.removeAll()
                if let _ = self.best_route
                {
                    self.reached = self.best_route?.count == columns
                    for node in self.best_route!
                    {
                        self.path = self.path + ((self.path == "") ? "":" ") + String(node.0+1)
                    }
                    self.sum = self.best_route![(self.best_route?.count)! - 1].1
                }
            }
        }
    }
    }
    
}
