//
//  Grid.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

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
    
    func getCoord(point:CGPoint)->Coordinate{
        return Coordinate(x: getNearestAxis(point.x), y: getNearestAxis(point.y))
    }
    
    private func getNearestAxis(x:Double)->Int{
        return Int(floor((x - size.width/2) / Constants.sqSize))
    }
    
    private func getNearestAxis(x:CGFloat)->Int{
        return getNearestAxis(Double(x))
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}