//
//  Tile.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spritekit

class Tile:SKSpriteNode{
    var coord:Coordinate
    //TODO: var grid:Grid
    
    init(startCoord:Coordinate){
        coord = startCoord
        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
