//
//  GameGrid.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spritekit

class GameGrid:VisibleGrid{
    
    init(){
        super.init(pos: Constants.gameGridPos, gridSize: Constants.gameGridSize, n: Constants.gameGridN)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}