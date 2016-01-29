//
//  CircularUIView.swift
//  CORemote
//
//  Created by denis lavrov on 29/01/16.
//  Copyright © 2016 Denis Lavrov. All rights reserved.
//

import UIKit

@IBDesignable
class CircularUIView: UIView {

    var backgroundLayer: CAShapeLayer!
    @IBInspectable var backgroundLayerColor: UIColor = UIColor.lightGrayColor()
    @IBInspectable var strokeColor: UIColor = UIColor.lightGrayColor()
    @IBInspectable var lineWidth: CGFloat = 1.0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setBackgroundLayer()
    }
    
    func setBackgroundLayer() {
        
        if backgroundLayer == nil {
            backgroundLayer = CAShapeLayer()
            layer.addSublayer(backgroundLayer)
            let rect = CGRectInset(bounds, lineWidth/2, lineWidth/2)
            let path = UIBezierPath(ovalInRect: rect)
            backgroundLayer.path = path.CGPath
            backgroundLayer.strokeColor = strokeColor.CGColor
            backgroundLayer.lineWidth = lineWidth
            backgroundLayer.fillColor = backgroundLayerColor.CGColor
            backgroundLayer.shadowColor = UIColor.blackColor().CGColor
            backgroundLayer.shadowOffset = CGSize(width: 1, height: 1)
            backgroundLayer.shadowRadius = 5.0
            backgroundLayer.shadowOpacity = 0.3
        }
        
        backgroundLayer.frame = layer.bounds
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
