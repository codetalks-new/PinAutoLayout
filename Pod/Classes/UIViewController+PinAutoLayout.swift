//
//  UIViewController+PinAutoLayout.swift
//  Pods
//
//  Created by Haizhen Lee on 15/10/9.
//
//

import UIKit

extension UIViewController{
    
    public func pinTopLayoutGuide(view:UIView,withMargin margin : CGFloat = 0) -> NSLayoutConstraint{
        assert(pa_contains(view), "NO such child View \(view)")
        let topC = NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: topLayoutGuide, attribute: .Bottom, multiplier: 1.0, constant: margin)
        self.view.addConstraint(topC)
        return topC
    }
    
    public func pinBottomLayoutGuide(view:UIView,withMargin margin : CGFloat = 0) -> NSLayoutConstraint{
        assert(pa_contains(view), "NO such child View \(view)")
        let bottomC = NSLayoutConstraint(item: view, attribute: .Bottom, relatedBy: .Equal, toItem: bottomLayoutGuide, attribute: .Top, multiplier: 1.0, constant: -margin)
        self.view.addConstraint(bottomC)
        return bottomC
    }
    
    public func pa_contains(view:UIView) -> Bool{
       return _findRootView(view) == self.view
    }
    
    private func _findRootView(view:UIView) -> UIView{
        var rootView = view
        while true{
            if let superview = rootView.superview{
                rootView = superview
            }else{
                break
            }
        }
        return rootView
    }
    
    
}
