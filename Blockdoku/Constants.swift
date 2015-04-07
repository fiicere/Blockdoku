//
//  Constants.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spritekit

struct Constants{
    
    static var sceneSize:CGSize = CGSize(width: 0, height: 0)
    static var minScreenDim = Double(min(sceneSize.height, sceneSize.width))
    
    // Grid Data
    static let gridColor = UIColor.darkGrayColor()
    static let gameGridN = 7
    static let indGridN = 3
    
    // Spacing Data
    static var sqSize = minScreenDim / (gameGridN + indGridN + 3)
    static var gameGridSize = CGSize(width: gameGridN * sqSize, height: gameGridN * sqSize)
    static var indGridSize = CGSize(width: indGridN * sqSize, height: indGridN * sqSize)
    
    static var gameGridPos = CGPoint(x: gameGridSize.width / 2 + sqSize, y: sceneSize.height/2)
    static var indGridPos = CGPoint(x: sceneSize.width - sqSize - indGridSize.width/2,
        y: sceneSize.height - sqSize - indGridSize.height/2)

    
    // Square Data
    static let gridSqColor = UIColor.whiteColor()
    
    // Tiles
    private static let sqMarginRatio:Double = 0.05
    static var tileSize = sqSize * (1 - sqMarginRatio)
    
}