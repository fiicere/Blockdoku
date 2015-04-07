//
//  GameGrid.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spritekit

class GameGrid:Grid{

    init(){
        super.init(pos: Constants.mainGridPosition, gridSize: Constants.mainGridSize, n: Constants.mainGridDims)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}