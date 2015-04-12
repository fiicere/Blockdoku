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
    var grid:Grid
    
    init(startCoord:Coordinate, g:Grid){
        coord = startCoord
        grid = g
        
        var t = SKTexture(imageNamed: Constants.imageName)
        var s = Constants.tileSize
        var c = UIColor.whiteColor()
        
        super.init(texture: t, color: c, size: s)
    }
    
    func positionOnGrid(){
        self.position = grid.getPoint(coord)
    }
    
    func positionOnGrid(offset:Coordinate){
        self.position = grid.getPoint(coord + offset)
    }
    
    func die(){
        self.removeFromParent()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
