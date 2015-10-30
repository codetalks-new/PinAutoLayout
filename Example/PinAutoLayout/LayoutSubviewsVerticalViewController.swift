//
//  LayoutSubviewsVerticalViewController.swift
//  PinAutoLayout
//
//  Created by Haizhen Lee on 15/10/13.
//  Copyright © 2015年 CocoaPods. All rights reserved.
//

import UIKit
import PinAutoLayout

class LayoutSubviewsVerticalViewController: BaseLayoutViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSubviews(createLabels(3), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Left,verticalAlign:.Top))
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Left,verticalAlign:.Middle))
        layoutSubviews(createLabels(3), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Left,verticalAlign:.Bottom))
        
        
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Middle,verticalAlign:.Top))
        layoutSubviews(createLabels(3), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Middle,verticalAlign:.Middle))
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Middle,verticalAlign:.Bottom))
        
        layoutSubviews(createLabels(3), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Right,verticalAlign:.Top))
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Right,verticalAlign:.Middle))
        layoutSubviews(createLabels(3), layoutParams: PALayoutParams(orientation:.Vertical, horizontalAlign:.Right,verticalAlign:.Bottom))
        
    }
    
}
