//
//  IndicatorGrid.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spriteKit

class IndicatorGrid:Grid{
    
    init(){
        super.init(pos: Constants.subGridPosition, gridSize: Constants.subGridSize, n: Constants.subGridDims)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
} 