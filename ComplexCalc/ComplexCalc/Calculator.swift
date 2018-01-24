//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs;
    }
    
    public func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1);
    }
    
    public func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var result = ["x": 0, "y": 0]
        result["x"] = lhs["x"]! + rhs["x"]!
        result["y"] = lhs["y"]! + rhs["y"]!
        return result;
    }
    
    public func add(_ args: [Int]) -> Int {
        var result = 0
        for num in args {
            result += num
        }
        return result;
    }
    
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs;
    }
    
    public func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1);
    }
    
    public func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var result = ["x": 0, "y": 0]
        result["x"] = lhs["x"]! - rhs["x"]!
        result["y"] = lhs["y"]! - rhs["y"]!
        return result;
    }
    
    public func subtract(_ args: [Int]) -> Int {
        var result = 0
        for num in args {
            result -= num
        }
        return result;
    }
    
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs;
    }
    
    public func multiply(_ args: [Int]) -> Int {
        var result = 1
        for num in args {
            result *= num
        }
        return result;
    }
    
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs;
    }
    
    public func count(_ args: [Int]) -> Int {
        return args.count;
    }
    
    public func avg(_ args: [Int]) -> Int {
        let sum = self.add(args)
        return sum / args.count;
    }
    
    public func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs);
    }
    
    public func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var result = beg
        for num in args {
            result = op(num, result)
        }
        return result;
    }
}
