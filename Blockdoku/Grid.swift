//
//  Grid.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spritekit
import uikit

class Grid : SKShapeNode{
    let centerPosition:CGPoint
    let dimensions:Int
    let gridMin:Int
    let gridMax:Int
    let size:CGSize
    
    init(pos:CGPoint, gridSize:CGSize, n:Int){
        centerPosition = pos
        dimensions = n
        gridMax = Int(floor(Double(n)/2.0))
        gridMin = -gridMax
        size = gridSize
        
        super.init()
        
        self.fillColor = Constants.gridColor
        
        displaySquares()
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
    
    func offset(coord:Coordinate) -> CGPoint{
        return CGPoint(x: coord.x * size.width/dimensions, y: coord.y * size.height/dimensions)
    }
    
    func getPoint(coord:Coordinate) -> CGPoint{
        var shift = offset(coord)
        return CGPoint(x: centerPosition.x + shift.x, y: centerPosition.y + shift.y)
    }
    
    func isOnGrid(coord:Coordinate) -> Bool{
        return coord.x > gridMin && coord.x < gridMax && coord.y > gridMin && coord.y < gridMax
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}