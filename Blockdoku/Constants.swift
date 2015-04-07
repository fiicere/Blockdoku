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
    
    //Game Size
    static var screenSize:CGSize = CGSize(width: 0,height: 0)
    static var widthToHeight : Double = Double(screenSize.width / screenSize.height)
    static var minScreenLen : Double = Double(min(screenSize.height, screenSize.width))
    
    private static let screenMarginRatio : Double = 0.1
    static var screenMargin:Double = minScreenLen * screenMarginRatio
    
    //Grids
    static var gridColor = UIColor.darkGrayColor()
    
    //MainGrid
    static var mainGridDims = 5
    static var mainGridLen = minScreenLen - (2 * screenMargin)
    static var mainGridSize:CGSize = CGSize(width: mainGridLen, height: mainGridLen)
    static var mainGridPosition:CGPoint = CGPoint(x: minScreenLen/2, y: minScreenLen/2)
    
    //SubGrid
    static var subGridDims = 3
    static var subGridSize = CGSize(width: gridSqSize * subGridDims, height: gridSqSize * subGridDims)
    static var subGridDist = screenMargin + Double(subGridSize.width / 2)
    static var subGridPosition = CGPoint(x: screenSize.width - subGridDist, y: screenSize.height - subGridDist)
    
    //Grid Squares
    static var gridSqColor = UIColor.whiteColor()
    static var gridSqSize = mainGridLen / mainGridDims
    
    //Tile Size
    private static let sqMarginRatio:Double = 0.025
    static var sqMargin = gridSqSize * sqMarginRatio
    static var tileSize = CGSize(width: gridSqSize - (2 * sqMargin), height: gridSqSize - (2 * sqMargin))
}