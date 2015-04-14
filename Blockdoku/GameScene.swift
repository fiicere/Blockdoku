//
//  GameScene.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import SpriteKit

class GameScene: SKScene {
    var activePiece:Piece = Piece()
    
    override func didMoveToView(view: SKView) {
        Constants.sceneSize = self.size
        
        self.backgroundColor = Constants.sceneColor
        
        self.addChild(Public.gameGrid)
        self.addChild(Public.indGrid)
        
        activePiece = Piece()
        self.addChild(activePiece)
    }

    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        for item in touches{
            var touch = item as! UITouch
            var loc:CGPoint = touch.locationInNode(self)
            println("Touched \(loc)")

            if(Public.gameGrid.isOnGrid(loc)){
                activePiece.coord = Public.gameGrid.getCoord(loc)
            }
            if(Public.indGrid.isOnGrid(loc)){
                replacePiece()}
        }
    }
    
    func replacePiece(){
        activePiece.removeFromParent()
        activePiece.removeAllChildren()
        activePiece = Piece()
        self.addChild(activePiece)
    }

}
