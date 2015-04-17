//
//  Piece.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import SpriteKit

class Piece:SKNode{
    var coord:Coordinate = Coordinate(x: 0,y: 0){
        didSet{updateTilePositions()}
    }
    
    var activeTiles = Array<Tile>()
    var indTiles = Array<Tile>()
    
    override init(){
        super.init()
        
        newPiece()
    }
    
    func newPiece(){
        createActiveTiles()
        copyActiveToInd()
        updateTilePositions()
        
        if(activeTiles.count == 0){newPiece()}
    }

    func createActiveTiles(){
        for(var x=Public.indGrid.gridMin; x<=Public.indGrid.gridMax; x++){
            for(var y=Public.indGrid.gridMin; y<=Public.indGrid.gridMax; y++){
                if (trueWithProbability(Constants.spawnRate)){
                    var t:Tile = Tile(startCoord: Coordinate(x: x, y: y), g: Public.gameGrid)
                    activeTiles.append(t)
                    addChild(t)
                }
            }
        }
    }
    
    func copyActiveToInd(){
        for t:Tile in activeTiles{
            var t1:Tile = t.duplicate()
            t1.grid = Public.indGrid
            indTiles.append(t1)
            addChild(t1)
        }
    }

    func updateTilePositions(){
        for t:Tile in activeTiles{t.position = t.grid.getPoint(coord + t.coord)}
        for t:Tile in indTiles{t.position = t.grid.getPoint(t.coord)}

    }
    
    private func center(){
        for d:Direction in Direction.all{
            if(canShift(d.opposite())){shiftPiece(d.opposite())}
            if(canShift(d)){shiftPiece(d)}
        }
    }
    
    private func canShift(d:Direction) -> Bool{
        for t:Tile in indTiles{
            if(!isInBounds(t.coord.adjacent(d))){
                return false
            }
        }
        return true
    }
    
    private func shiftPiece(d:Direction){
        println("Shifting \(d)")
        for t:Tile in indTiles{t.coord = t.coord.adjacent(d)}
        
        for t:Tile in activeTiles{t.coord = t.coord.adjacent(d)}
    }
    
    func isInBounds(c:Coordinate) -> Bool{
        if(c.x > Public.indGrid.gridMax){return false}
        if(c.x < Public.indGrid.gridMin){return false}
        if(c.y > Public.indGrid.gridMax){return false}
        if(c.y < Public.indGrid.gridMin){return false}
        return true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}