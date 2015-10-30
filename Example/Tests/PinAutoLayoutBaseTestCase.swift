//
//  PinAutoLayoutBaseTestCase.swift
//  PinAutoLayout
//
//  Created by Haizhen Lee on 15/10/13.
//  Copyright © 2015年 CocoaPods. All rights reserved.
//

import XCTest

let kContainerViewWidth : CGFloat = 320
let kContainerViewHeight : CGFloat = 480

class PinAutoLayoutBaseTestCase: XCTestCase {
    var viewA:UIView!
    var viewB:UIView!
    var viewC:UIView!
    var viewD:UIView!
    
    var containerView:UIView!
    
    func views() -> [UIView]{
       return [viewA,viewB,viewC,viewD]
    }
    
    func clearViewsConstraints(){
        for view in views(){
            view.removeConstraints(view.constraints)
        }
    }
    
    override func setUp() {
        super.setUp()
        
        containerView = UIView(frame: CGRect(x: 0, y: 0, width: kContainerViewWidth, height: kContainerViewHeight))
        
        viewA = UIView(frame: CGRectZero)
        viewB = UIView(frame: CGRectZero)
        viewC = UIView(frame: CGRectZero)
        viewD = UIView(frame: CGRectZero)
        
        for view in views(){
            view.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(view)
            
        }
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testViewHierachy() {
        XCTAssertEqual(viewA.superview, containerView)
        XCTAssertEqual(viewB.superview, containerView)
        XCTAssertEqual(viewC.superview, containerView)
        XCTAssertEqual(viewD.superview, containerView)
    }
    
    // MARK: Helper
    func evaluateConstraints(){
        evaluateConstraintsForView(containerView)
    }
    
    func evaluateConstraintsForView(view:UIView){
        for subview in view.subviews{
            evaluateConstraintsForView(subview)
        }
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }
    
}
