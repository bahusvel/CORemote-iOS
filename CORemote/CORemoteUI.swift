//
//  CORemoteUI.swift
//  CORemote
//
//  Created by Denis Lavrov on 30/01/16.
//  Copyright (c) 2016 bahus. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class CORemoteUI : NSObject {

    //// Drawing Methods

    public class func drawModuleRepr(frame frame: CGRect = CGRectMake(0, 0, 110, 110), shapeColor: UIColor = UIColor(red: 0.944, green: 0.108, blue: 0.317, alpha: 1.000), moduleName: String = "Logger") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        var shapeColorRedComponent: CGFloat = 1,
            shapeColorGreenComponent: CGFloat = 1,
            shapeColorBlueComponent: CGFloat = 1
        shapeColor.getRed(&shapeColorRedComponent, green: &shapeColorGreenComponent, blue: &shapeColorBlueComponent, alpha: nil)

        let shapeColor2 = UIColor(red: (shapeColorRedComponent * 0.9), green: (shapeColorGreenComponent * 0.9), blue: (shapeColorBlueComponent * 0.9), alpha: (CGColorGetAlpha(shapeColor.CGColor) * 0.9 + 0.1))
        let shapeColor3 = UIColor(red: (shapeColorRedComponent * 0.4 + 0.6), green: (shapeColorGreenComponent * 0.4 + 0.6), blue: (shapeColorBlueComponent * 0.4 + 0.6), alpha: (CGColorGetAlpha(shapeColor.CGColor) * 0.4 + 0.6))

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.57)
        shadow.shadowOffset = CGSizeMake(0.1, 2.1)
        shadow.shadowBlurRadius = 5

        //// Variable Declarations
        let strokeSize: CGFloat = 2

        //// Shape Drawing
        let shapePath = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 5, frame.minY + 4, frame.width - 10, frame.height - 10))
        CGContextSaveGState(context)
        CGContextSetShadowWithColor(context, shadow.shadowOffset, shadow.shadowBlurRadius, (shadow.shadowColor as! UIColor).CGColor)
        shapeColor.setFill()
        shapePath.fill()
        CGContextRestoreGState(context)

        shapeColor2.setStroke()
        shapePath.lineWidth = strokeSize
        shapePath.stroke()


        //// Text Drawing
        let textRect = CGRectMake(frame.minX + floor((frame.width - 85) * 0.52000 + 0.5), frame.minY + floor((frame.height - 55) * 0.47273 + 0.5), 85, 55)
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center

        let textFontAttributes = [NSFontAttributeName: UIFont.boldSystemFontOfSize(UIFont.buttonFontSize()), NSForegroundColorAttributeName: shapeColor3, NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = NSString(string: moduleName).boundingRectWithSize(CGSizeMake(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect);
        NSString(string: moduleName).drawInRect(CGRectMake(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)
    }

    public class func drawAction(frame frame: CGRect = CGRectMake(10, 1, 90, 109), shapeColor: UIColor = UIColor(red: 0.944, green: 0.108, blue: 0.317, alpha: 1.000), actionName: String = "Hello, World!") {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        var shapeColorRedComponent: CGFloat = 1,
            shapeColorGreenComponent: CGFloat = 1,
            shapeColorBlueComponent: CGFloat = 1
        shapeColor.getRed(&shapeColorRedComponent, green: &shapeColorGreenComponent, blue: &shapeColorBlueComponent, alpha: nil)

        let shapeColor2 = UIColor(red: (shapeColorRedComponent * 0.9), green: (shapeColorGreenComponent * 0.9), blue: (shapeColorBlueComponent * 0.9), alpha: (CGColorGetAlpha(shapeColor.CGColor) * 0.9 + 0.1))

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = UIColor.blackColor().colorWithAlphaComponent(0.57)
        shadow.shadowOffset = CGSizeMake(0.1, 2.1)
        shadow.shadowBlurRadius = 5

        //// Image Declarations
        let image = UIImage(named: "image.png")!

        //// Variable Declarations
        let strokeSize: CGFloat = 2

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRectMake(frame.minX + 5, frame.minY + 5, frame.width - 10, frame.height - 29), cornerRadius: 20)
        CGContextSaveGState(context)
        CGContextSetShadowWithColor(context, shadow.shadowOffset, shadow.shadowBlurRadius, (shadow.shadowColor as! UIColor).CGColor)
        shapeColor.setFill()
        rectanglePath.fill()
        CGContextRestoreGState(context)



        //// Rectangle 2 Drawing
        let rectangle2Rect = CGRectMake(frame.minX + 5, frame.minY + 5, frame.width - 10, frame.height - 29)
        let rectangle2Path = UIBezierPath(roundedRect: rectangle2Rect, cornerRadius: 20)
        CGContextSaveGState(context)
        rectangle2Path.addClip()
        CGContextScaleCTM(context, 1, -1)
        CGContextDrawTiledImage(context, CGRectMake(rectangle2Rect.minX, -rectangle2Rect.minY, image.size.width, image.size.height), image.CGImage)
        CGContextRestoreGState(context)
        shapeColor2.setStroke()
        rectangle2Path.lineWidth = strokeSize
        rectangle2Path.stroke()


        //// Text Drawing
        let textRect = CGRectMake(frame.minX + 5, frame.minY + 91, 80, 13)
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center

        let textFontAttributes = [NSFontAttributeName: UIFont.systemFontOfSize(UIFont.smallSystemFontSize()), NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = NSString(string: actionName).boundingRectWithSize(CGSizeMake(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect);
        NSString(string: actionName).drawInRect(CGRectMake(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)
    }

    public class func drawGlowRing(frame frame: CGRect = CGRectMake(0, 0, 110, 110)) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let glowColor = UIColor(red: 0.000, green: 0.679, blue: 1.000, alpha: 1.000)

        //// Shadow Declarations
        let glow = NSShadow()
        glow.shadowColor = glowColor
        glow.shadowOffset = CGSizeMake(0.1, -0.1)
        glow.shadowBlurRadius = 5

        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(frame.minX + 5, frame.minY + 5, frame.width - 10, frame.height - 10))
        CGContextSaveGState(context)
        CGContextSetShadowWithColor(context, glow.shadowOffset, glow.shadowBlurRadius, (glow.shadowColor as! UIColor).CGColor)
        glowColor.setStroke()
        ovalPath.lineWidth = 2
        ovalPath.stroke()
        CGContextRestoreGState(context)
    }

    //// Generated Images

    public class func imageOfModuleRepr(frame frame: CGRect = CGRectMake(0, 0, 110, 110), shapeColor: UIColor = UIColor(red: 0.944, green: 0.108, blue: 0.317, alpha: 1.000), moduleName: String = "Logger") -> UIImage {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
            CORemoteUI.drawModuleRepr(frame: CGRectMake(0, 0, frame.size.width, frame.size.height), shapeColor: shapeColor, moduleName: moduleName)

        let imageOfModuleRepr = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return imageOfModuleRepr
    }

}