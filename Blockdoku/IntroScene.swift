//
//  GameScene.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import SpriteKit

class IntroScene: SKScene {
    override func didMoveToView(view: SKView) {        
        Constants.sceneSize = self.size

        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        myLabel.fontColor = UIColor.blueColor()
        
        self.addChild(myLabel)
        
        self.backgroundColor = Constants.sceneColor
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        var scene:SKScene = GameScene(size: self.size)
        self.view?.presentScene(scene, transition:SKTransition.fadeWithDuration(0.5))
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
