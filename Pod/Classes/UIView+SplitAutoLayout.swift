//
//  UIView+SplitAutoLayout.swift
//  Pods
//
//  Created by Haizhen Lee on 15/9/30.
//
//

import UIKit

public let PA_DEFAULT_PADDING : CGFloat = 8

public enum HorizontalAlign:Int{
    case Left
    case Middle
    case Right
}

public enum VerticalAlign:Int{
    case Top
    case Middle
    case Bottom
}

public extension UIView{
    
    public func batchAddSubviews(subviews:[UIView]) -> Self{
        for subview in subviews{
            addSubview(subview)
        }
        
        return self
    }
    
    private func assertSubviews(views:[UIView]){
        assert(subviews.count > 0, "Subviews is Empty")
        for subview in subviews{
            assert(subview.superview == self, "No such subview \(subview)")
        }
    }
    
   public func splitVerticalForSubviews(subviews:[UIView], withInsets insets:UIEdgeInsets = UIEdgeInsetsZero,withSpace space:CGFloat = PA_DEFAULT_PADDING) -> EdgeConstraints {
       assertSubviews(subviews)
        let topView = subviews.first!
        let bottomView = subviews.last!
        let edgeC = EdgeConstraints()
        edgeC.leading =  topView.pinLeading(insets.left)
        edgeC.trailing = topView.pinTrailing(insets.right)
        edgeC.top = topView.pinTop(insets.top)
        edgeC.bottom = bottomView.pinBottom(insets.bottom)
        
        var childViews = subviews
        let previousView = childViews.removeAtIndex(0)
        while !childViews.isEmpty{
           let sibling = childViews.removeAtIndex(0)
            sibling.pinWidthToSibling(topView)
            sibling.pinHeightToSibling(topView)
            sibling.pinCenterXToSibling(topView)
            sibling.pinBelowSibling(previousView,withMargin:space)
        }
        return edgeC
    }
   
    public func splitHorizontalForSubviews(subviews:[UIView], withInsets insets:UIEdgeInsets = UIEdgeInsetsZero,withSpace space:CGFloat = PA_DEFAULT_PADDING) -> EdgeConstraints {
        assertSubviews(subviews)
        let leadingView = subviews.first!
        let trailingView = subviews.last!
        let edgeC = EdgeConstraints()
        edgeC.leading =  leadingView.pinLeading(insets.left)
        edgeC.trailing = trailingView.pinTrailing(insets.right)
        edgeC.top = leadingView.pinTop(insets.top)
        edgeC.bottom = leadingView.pinBottom(insets.bottom)
        
        var childViews = subviews
        var previousView = childViews.removeAtIndex(0)
        while !childViews.isEmpty{
            let sibling = childViews.removeAtIndex(0)
            sibling.pinWidthToSibling(leadingView)
            sibling.pinHeightToSibling(leadingView)
            sibling.pinCenterYToSibling(leadingView)
            sibling.pinLeadingToSibling(leadingView, withMargin: space)
        }
        return edgeC
    }
    
    public func alignSubviewsToCenter(subviews:[UIView]){
        alignSubviews(subviews, horizontalAlign: .Middle, verticalAlign: .Middle)
    }
    
    public func alignSubviews(subviews:[UIView],horizontalAlign : HorizontalAlign ,verticalAlign:VerticalAlign,offset:UIOffset = UIOffsetZero){
        
    }
    
    public func alignSubviewsToVerticalCenter(subviews:[UIView], withInsets insets:UIEdgeInsets = UIEdgeInsetsZero,withSpace space:CGFloat = PA_DEFAULT_PADDING) -> EdgeConstraints {
        assertSubviews(subviews)
        let leadingView = subviews.first!
        let trailingView = subviews.last!
        let edgeC = EdgeConstraints()
        edgeC.leading =  leadingView.pinLeading(insets.left)
        edgeC.trailing = trailingView.pinTrailing(insets.right)
        edgeC.top = leadingView.pinTop(insets.top)
        edgeC.bottom = leadingView.pinBottom(insets.bottom)
        
        var childViews = subviews
        var previousView = childViews.removeAtIndex(0)
        while !childViews.isEmpty{
            let sibling = childViews.removeAtIndex(0)
            sibling.pinWidthToSibling(leadingView)
            sibling.pinHeightToSibling(leadingView)
            sibling.pinCenterYToSibling(leadingView)
            sibling.pinLeadingToSibling(leadingView, withMargin: space)
        }
        return edgeC
    }
    
    
}
