//
//  Arithmetic.swift
//  Blockdoku
//
//  Created by Kevin Yue on 4/6/15.
//  Copyright (c) 2015 Kevin Yue. All rights reserved.
//

import Foundation
import spritekit

class Arithmetic{
    
}

////////////////////////////INT DOUBLE MATH//////////////////////////
//Addition
public func + (left: Double, right: Int) -> Double {
    return left + Double(right)
}

public func + (left: Int, right: Double) -> Double {
    return right + Double(left)
}

public func += (inout left: Double, right: Int) {
    left += Double(right)
}

//Subtraction
public func - (left: Double, right: Int) -> Double {
    return left - Double(right)
}

public func - (left: Int, right: Double) -> Double {
    return Double(left) - right
}

public func -= (inout left: Double, right: Int) {
    left -= Double(right)
}

//Multiplication
public func * (left: Double, right: Int) -> Double {
    return left * Double(right)
}

public func * (left: Int, right: Double) -> Double {
    return right * Double(left)
}

public func *= (inout left: Double, right: Int) {
    left *= Double(right)
}

//Division
public func / (left: Double, right: Int) -> Double {
    return left / Double(right)
}

public func / (left: Int, right: Double) -> Double {
    return Double(left) / right
}

public func /= (inout left: Double, right: Int) {
    left /= Double(right)
}

//Inequality
public func > (left: Double, right: Int) -> Bool {
    return left > Double(right)
}

public func > (left: Int, right: Double) -> Bool {
    return Double(left) > right
}

public func < (left: Double, right: Int) -> Bool {
    return left < Double(right)
}

public func < (left: Int, right: Double) -> Bool {
    return Double(left) < right
}

public func == (left: Double, right: Int) -> Bool {
    return left == Double(right)
}

public func ==(left: Int, right: Double) -> Bool {
    return Double(left) == right
}



////////////////////////////CGFLOAT DOUBLE MATH//////////////////////////
//Addition
public func + (left: CGFloat, right: Double) -> Double {
    return Double(left) + right
}

public func + (left: Double, right: CGFloat) -> Double {
    return left + Double(right)
}

public func += (inout left: CGFloat, right: Double) {
    left += CGFloat(right)
}

//Subtraction
public func - (left: CGFloat, right: Double) -> Double {
    return Double(left) - right
}

public func - (left: Double, right: CGFloat) -> Double {
    return right - Double(left)
}

public func -= (inout left: CGFloat, right: Double) {
    left -= CGFloat(right)
}

//Multiplication
public func * (left: CGFloat, right: Double) -> Double {
    return Double(left) * right
}

public func * (left: Double, right: CGFloat) -> Double {
    return right * Double(left)
}

public func *= (inout left: CGFloat, right: Double) {
    left *= CGFloat(right)
}

//Division
public func / (left: CGFloat, right: Double) -> Double {
    return Double(left) / right
}

public func / (left: Double, right: CGFloat) -> Double {
    return left / Double(right)
}

public func /= (inout left: CGFloat, right: Double) {
    left /= CGFloat(right)
}

//Inequality
public func > (left: CGFloat, right: Double) -> Bool {
    return left > CGFloat(right)
}

public func > (left: Double, right: CGFloat) -> Bool {
    return CGFloat(left) > right
}
public func < (left: CGFloat, right: Double) -> Bool {
    return left < CGFloat(right)
}

public func < (left: Double, right: CGFloat) -> Bool {
    return CGFloat(left) < right
}
public func == (left: CGFloat, right: Double) -> Bool {
    return left == CGFloat(right)
}
public func == (left: Double, right: CGFloat) -> Bool {
    return CGFloat(left) == right
}

////////////////////////////CGFLOAT INT MATH//////////////////////////
//Addition
public func + (left: CGFloat, right: Int) -> CGFloat {
    return left + CGFloat(right)
}

public func + (left: Int, right: CGFloat) -> CGFloat {
    return right + CGFloat(left)
}

public func += (inout left: CGFloat, right: Int) {
    left += CGFloat(right)
}

//Subtraction
public func - (left: CGFloat, right: Int) -> CGFloat {
    return left - CGFloat(right)
}

public func - (left: Int, right: CGFloat) -> CGFloat {
    return CGFloat(left) - right
}

public func -= (inout left: CGFloat, right: Int) {
    left -= CGFloat(right)
}

//Multiplication
public func * (left: CGFloat, right: Int) -> CGFloat {
    return left * CGFloat(right)
}

public func * (left: Int, right: CGFloat) -> CGFloat {
    return right * CGFloat(left)
}

public func *= (inout left: CGFloat, right: Int) {
    left *= CGFloat(right)
}

//Division
public func / (left: CGFloat, right: Int) -> CGFloat {
    return left / CGFloat(right)
}

public func / (left: Int, right: CGFloat) -> CGFloat {
    return CGFloat(left) / right
}

public func /= (inout left: CGFloat, right: Int) {
    left /= CGFloat(right)
}

//Inequality
public func > (left: CGFloat, right: Int) -> Bool {
    return left > CGFloat(right)
}

public func > (left: Int, right: CGFloat) -> Bool {
    return CGFloat(left) > right
}

public func < (left: CGFloat, right: Int) -> Bool {
    return left < CGFloat(right)
}

public func < (left: Int, right: CGFloat) -> Bool {
    return CGFloat(left) < right
}

public func == (left: CGFloat, right: Int) -> Bool {
    return left == CGFloat(right)
}

public func == (left: Int, right: CGFloat) -> Bool {
    return CGFloat(left) == right
}

//Improved Modulus
public func mod(num: Double, base:Double) -> Double{
    var remainder = num % base
    if(remainder < 0){return remainder + base}
    return remainder
}

public func mod(num: CGFloat, base:CGFloat) -> CGFloat{
    var remainder = num % base
    if(remainder < 0){return remainder + base}
    return remainder
}

public func mod(num: CGFloat, base:Double) -> Double{
    var remainder = Double(num) % base
    if(remainder < 0){return remainder + base}
    return remainder
}

public func mod(num: Double, base:CGFloat) -> Double{
    var remainder = num % Double(base)
    if(remainder < 0){return remainder + Double(base)}
    return remainder
}