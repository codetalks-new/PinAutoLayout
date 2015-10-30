//
//  PinAutoLayoutTestCases.swift
//  PinAutoLayout
//
//  Created by Haizhen Lee on 15/10/13.
//  Copyright © 2015年 CocoaPods. All rights reserved.
//

import XCTest
import PinAutoLayout

class PinAutoLayoutTestCases: PinAutoLayoutBaseTestCase{
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPinCenter() {
        viewA.pinCenter()
        
        viewB.pinCenterX(10)
        
        viewC.pinCenterY(10)
        
        evaluateConstraints()
        
        
        XCTAssertEqual(viewA.center, containerView.center)
        
        XCTAssertEqual(viewB.center.x, containerView.center.x + 10)
        
        XCTAssertEqual(viewC.center.y, containerView.center.y + 10)
    }
    
    
    func testPinCenterRelatively(){
       let ac =  viewA.pinTrailingToCenterX()
        let bc = viewB.pinLeadingToCenterX()
        let cc = viewC.pinAboveCenterY()
        let dc = viewD.pinBelowCenterY()
        
        
        evaluateConstraints()
        
        XCTAssertEqual(viewA.frame.maxX, containerView.center.x)
        XCTAssertEqual(viewB.frame.minX, containerView.center.x)
        XCTAssertEqual(viewC.frame.maxY, containerView.center.y)
        XCTAssertEqual(viewD.frame.minY, containerView.center.y)
        
       
        containerView.removeConstraints([ac,bc,cc,dc])
        
        viewA.pinTrailingToCenterX(10)
        viewB.pinLeadingToCenterX(10)
        viewC.pinAboveCenterY(10)
        viewD.pinBelowCenterY(10)
        
        
        evaluateConstraints()
        
        XCTAssertEqual(viewA.frame.maxX, containerView.center.x - 10)
        XCTAssertEqual(viewB.frame.minX, containerView.center.x + 10)
        XCTAssertEqual(viewC.frame.maxY, containerView.center.y - 10)
        XCTAssertEqual(viewD.frame.minY, containerView.center.y + 10)
    }
    
    func testPinEdge(){
        viewA.pinEdge()
        evaluateConstraints()
        XCTAssertEqual(viewA.frame, containerView.frame)
    }
    
    func testPinSize(){
        let widthC = viewA.pinWidth(32)
        let heightC = viewA.pinHeight(32)
        evaluateConstraints()
        XCTAssertEqual(viewA.frame.width, 32)
        XCTAssertEqual(viewA.frame.height, 32)
     
        viewA.removeConstraint(widthC)
        viewA.removeConstraint(heightC)
        
        let size = CGSize(width: 64, height: 64)
        viewA.pinSize(size)
        evaluateConstraints()
        XCTAssertEqual(viewA.frame.size, size)
        
    }
    
}
