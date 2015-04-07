//
//  Coord.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spritekit

public struct Coordinate{
    let x:Int
    let y:Int
}

public func + (left: Coordinate, right: Coordinate) -> Coordinate {
    return Coordinate(x: left.x + right.x, y: left.y + right.y)
}

public func - (left: Coordinate, right: Coordinate) -> Coordinate {
    return Coordinate(x: left.x - right.x, y: left.y - right.y)
}