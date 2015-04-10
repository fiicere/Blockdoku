//
//  VisibleGrid.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/10/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spritekit

class VisibleGrid : Grid{
    
    override init(pos: CGPoint, gridSize: CGSize, n: Int) {
        super.init(pos: pos, gridSize: gridSize, n: n)
        displaySquares()
    }
    

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    
    
    func displaySquares(){
        addBackground()
        
        for(var x=gridMin; x<=gridMax; x++){
            for(var y=gridMin; y<=gridMax; y++){
                //Add a square at location
                var sq = SKShapeNode(rectOfSize: Constants.tileSize)
                sq.fillColor = Constants.gridSqColor
                sq.position = getPoint(Coordinate(x: x, y: y))
                
                self.addChild(sq)
            }
        }
    }
    
    func addBackground(){
        var background = SKShapeNode(rectOfSize: size)
        background.fillColor = Constants.gridColor
        background.position = centerPosition
        self.addChild(background)
        
    }
}