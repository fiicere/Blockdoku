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
        
        self.addChild(GameGrid())
        self.addChild(IndicatorGrid())
        
        activePiece = Piece()
        self.addChild(activePiece)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch in touches{
            replacePiece()
        }
    }
    
    func replacePiece(){
        activePiece.removeFromParent()
        activePiece.removeAllChildren()
        activePiece = Piece()
        self.addChild(activePiece)
    }
    
    func printTouch(t:UITouch){
        println("Touched \(t.locationInNode(self))")
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
