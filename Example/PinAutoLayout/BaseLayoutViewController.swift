//
//  BaseLayoutViewController.swift
//  PinAutoLayout
//
//  Created by Haizhen Lee on 15/10/13.
//  Copyright © 2015年 CocoaPods. All rights reserved.
//

import UIKit
import PinAutoLayout
import RandomColorSwift

class BaseLayoutViewController: UIViewController {
    let containView = UIView(frame: CGRectZero)
    
    override func loadView() {
        super.loadView()
        view.addSubview(containView)
        containView.translatesAutoresizingMaskIntoConstraints = false
        containView.backgroundColor = UIColor.whiteColor()
        pinEdge(containView)
    }
   
    func createLabels(count:Int) -> [UILabel]{
        return (1...count).map{ value -> UILabel in
            return UILabel(frame:CGRectZero)
        }
    }
    
    func layoutSubviews(subviews:[UILabel],layoutParams:PALayoutParams){
        let groupColor = randomColor(luminosity:.Dark)
        for (index,label) in subviews.enumerate(){
            label.text = "\(layoutParams.alignKey)\(index + 1)"
            label.textColor = UIColor.whiteColor()
            label.backgroundColor = groupColor
            containView.addSubview(label)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.pinHeightGreaterThanOrEqual(44)
        }
        containView.layoutSubviews(subviews, layoutParams: layoutParams)
    }
    


}
