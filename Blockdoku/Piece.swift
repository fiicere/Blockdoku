//
//  Piece.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spriteKit

class Piece:SKNode{
    var coord:Coordinate = Coordinate(x: 0,y: 0){
        didSet{updateTilePositions()}
    }
    
    var activeTiles = Array<Tile>()
    var indTiles = Array<Tile>()
    
    override init(){
        super.init()
        
        createActiveTiles()
        copyActiveToInd()
        updateTilePositions()
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
//        for t:Tile in activeTiles{
//            var t1:Tile = t.copy() as Tile
//            t1.grid = Public.indGrid
//            indTiles.append(t1)
//            addChild(t1)
//        }
    }

    func updateTilePositions(){
        for t:Tile in activeTiles{t.position = t.grid.getPoint(coord + t.coord)}
        for t:Tile in indTiles{t.position = t.grid.getPoint(t.coord)}

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}