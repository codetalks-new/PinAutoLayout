//
//  LayoutSubviewsHorizontalViewController.swift
//  PinAutoLayout
//
//  Created by Haizhen Lee on 15/10/12.
//  Copyright © 2015年 CocoaPods. All rights reserved.
//

import UIKit
import PinAutoLayout

class LayoutSubviewsHorizontalViewController: BaseLayoutViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(horizontalAlign:.Left,verticalAlign:.Top))
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(horizontalAlign:.Left,verticalAlign:.Middle))
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(horizontalAlign:.Left,verticalAlign:.Bottom))
       
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(horizontalAlign:.Middle,verticalAlign:.Top))
        layoutSubviews(createLabels(3), layoutParams: PALayoutParams(horizontalAlign:.Middle,verticalAlign:.Middle))
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(horizontalAlign:.Middle,verticalAlign:.Bottom))
        
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(horizontalAlign:.Right,verticalAlign:.Top))
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(horizontalAlign:.Right,verticalAlign:.Middle))
        layoutSubviews(createLabels(2), layoutParams: PALayoutParams(horizontalAlign:.Right,verticalAlign:.Bottom))
        

    }

}
