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
    private static let screenMarginRatio = 0.05
    static var marginR = minScreenDim * screenMarginRatio
    static var sqSize = min((sceneSize.width - 3 * marginR) / (gameGridN + indGridN) ,
        (sceneSize.height - 2 * marginR) / gameGridN)
    
    static var gameGridSize = CGSize(width: sqSize * gameGridN, height: sqSize * gameGridN)
    static var indGridSize = CGSize(width: sqSize * indGridN, height: sqSize * indGridN)
    
    static var gameGridPos = CGPoint(x: marginR + gameGridSize.width / 2,
        y: sceneSize.height - marginR - gameGridSize.height / 2)
    static var indGridPos = CGPoint(x: sceneSize.width - marginR - indGridSize.width,
        y: sceneSize.height - marginR - indGridSize.height)
    
    // Tile Data
    static let gridSqColor = UIColor.whiteColor()
    static let sqMarginRatio = 0.05
    static var tileSize = CGSize(width: sqSize * (1 - 2*sqMarginRatio), height: sqSize * (1-2*sqMarginRatio))

    
}