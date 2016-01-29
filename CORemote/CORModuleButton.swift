//
//  CORModuleButton.swift
//  CORemote
//
//  Created by denis lavrov on 29/01/16.
//  Copyright © 2016 Denis Lavrov. All rights reserved.
//

import UIKit

@IBDesignable
class CORModuleButton: UIButton {
    
    var backgroundLayer: CAShapeLayer!
    @IBInspectable var buttonColor: UIColor = UIColor.grayColor()
    @IBInspectable var diameter: CGFloat = 50.0
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    static func boundsWithCenter(center: CGPoint, diameter: CGFloat) -> CGRect{
        return CGRect(x: center.x - diameter/2, y: center.y - diameter/2, width: diameter, height: diameter)
    }

    override func layoutSubviews() {
        if backgroundLayer == nil {
            backgroundLayer = CAShapeLayer()
            layer.addSublayer(backgroundLayer)
            let rect = CGRectInset(bounds, 0, 0)
            let path = UIBezierPath(ovalInRect: rect)
            backgroundLayer.path = path.CGPath
            backgroundLayer.fillColor = buttonColor.CGColor
        }
    }
}
