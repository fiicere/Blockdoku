//
//  Coord.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import SpriteKit

public struct Coordinate{
    let x:Int
    let y:Int
    
    func adjacent(d:Direction) -> Coordinate{
        switch d{
        case .UP:
            return self + Coordinate(x: 0,y: 1)
        case .DOWN:
            return self + Coordinate(x: 0, y: -1)
        case .RIGHT:
            return self + Coordinate(x: 1, y: 0)
        case .LEFT:
            return self + Coordinate(x: -1, y: 0)
        default:
            println("ERROR: Invalid direction")
            return self
        }
    }
    
    func toString() -> String{
        return "(\(x), \(y))"
    }
}

public func == (left:Coordinate, right:Coordinate) -> Bool{
    return left.x == right.x && left.y == right.y
}

public func + (left: Coordinate, right: Coordinate) -> Coordinate {
    return Coordinate(x: left.x + right.x, y: left.y + right.y)
}

public func - (left: Coordinate, right: Coordinate) -> Coordinate {
    return Coordinate(x: left.x - right.x, y: left.y - right.y)
}