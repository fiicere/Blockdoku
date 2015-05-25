//
//  PlacedTiles.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/12/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import SpriteKit

class PlacedTiles:SKNode{
    
    private var placedTiles = Array<Tile>(){
        didSet{updateChildrenToPlacedTiles()}
        //TODO: This is very inefficient because it is called once for every added TILE, not for every added piece
    }
    
    func tryAddPiece(p:Piece) -> Bool{
        if(!canAddPiece(p)){return false}
        else{
            addPiece(p)
            return true
        }
    }
    
    func canAddPiece(p:Piece) -> Bool{
        for t:Tile in p.getActive(){
            if(!canPlace(t)){
                return false
            }
        }
        return true
    }
    
    private func addPiece(p:Piece){
        for t:Tile in p.getActive(){addTile(t)}
    }
    
    func reset(){
        placedTiles = Array<Tile>()
    }
    
    private func updateChildrenToPlacedTiles(){
        self.removeAllChildren()
        for t:Tile in placedTiles{self.addChild(t)}
    }
    
    private func isAvailable(c:Coordinate) -> Bool{
        for t:Tile in placedTiles{
            if(t.coord == c){return false}
        }
        return true
    }
    
    private func canPlace(t:Tile) -> Bool{
        return isAvailable(t.coord)
    }
    
    
    private func addTile(t:Tile){
        placedTiles.append(t)
    }
}