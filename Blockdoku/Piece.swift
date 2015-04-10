//
//  Piece.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spriteKit

class Piece:Grid{
    var coord:Coordinate = Coordinate(x: 0,y: 0)
    var tiles = Array<Tile>()
    
    init(){
        super.init(pos: Constants.gameGridPos, gridSize: Constants.indGridSize, n: Constants.indGridN)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}