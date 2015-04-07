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
    override func didMoveToView(view: SKView) {
        Constants.sceneSize = self.size
        
        self.backgroundColor = UIColor.whiteColor()
        
        self.addChild(GameGrid())
        self.addChild(IndicatorGrid())
        
        println("IndGrid Position X = sceneSize.width - marginR - indGridSize.width")
        var i = Constants.indGridPos.x
        var ss = Constants.sceneSize.width
        var ind = Constants.indGridSize.width
        var m = Constants.marginR
        println("IndGrid Position X = \(i)")
        println("ss  = \(ss)")
        println("m = \(m)")
        println("ind = \(ind)")
        println("Should be at X = \((ss - m - ind))")
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        for touch in touches{
            printTouch(touch as UITouch)
        }
    }
    
    func printTouch(t:UITouch){
        println("Touched \(t.locationInNode(self))")
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
