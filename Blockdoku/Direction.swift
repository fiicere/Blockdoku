//
//  Direction.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/9/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation

enum Direction : String{
    case UP="UP", DOWN = "DOWN", LEFT="LEFT", RIGHT="RIGHT", NONE="NONE"
    static let all : Array<Direction> = [UP, DOWN, LEFT, RIGHT]
    
    func opposite() -> Direction{
        switch self{
        case UP:
            return DOWN
        case DOWN:
            return UP
        case LEFT:
            return RIGHT
        case RIGHT:
            return LEFT
        default:
            return NONE
        }
    }
}